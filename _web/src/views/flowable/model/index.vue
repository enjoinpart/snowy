<template>
  <div>
    <a-card :bordered="false" v-show="indexShow">
      <a-spin :spinning="tableLoading">
        <div class="table-page-search-wrapper" v-if="hasPerm('flowableModel:list')">
          <a-form layout="inline">
            <a-row :gutter="48">
              <a-col :md="8" :sm="24">
                <a-form-item label="流程名称" >
                  <a-input v-model="queryParam.name" allow-clear placeholder="请输入流程名称"/>
                </a-form-item>
              </a-col>
              <a-col :md="8" :sm="24">
                <a-button type="primary" @click="getModelList()">查询</a-button>
                <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
              </a-col>
            </a-row>
          </a-form>
        </div>
        <div class="table-operator" v-if="hasPerm('flowableModel:add') || hasPerm('flowableModel:importModel') ">
          <a-button @click="handleAdd" v-if="hasPerm('flowableModel:add')" type="primary" icon="plus" >新增模型</a-button>
          <a-upload
            v-if="hasPerm('flowableModel:importModel')"
            accept=".bpmn,.bpmn20.xml"
            name="file"
            :multiple="true"
            :customRequest="customRequest"
            :showUploadList="false"
          >
            <a-button> <a-icon type="upload" />导入模型</a-button>
          </a-upload>
        </div>
        <a-table
          :columns="columns"
          :dataSource="loadData"
          :pagination="false"
          :loading="tableLoading"
          :rowKey="(record) => record.id"
        >
          <span slot="name" slot-scope="text">
            <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
          </span>
          <span slot="created" slot-scope="text">
            <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
          </span>
          <span slot="version" slot-scope="text,record">
            <a v-if="hasPerm('flowableDefinition:version')" @click="openVersion(record)">V{{ text }}.0</a>
            <span v-else>V{{ text }}.0</span>
          </span>
          <span slot="description" slot-scope="text">
            <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
          </span>
          <span slot="action" slot-scope="text,record">
            <a @click="handleDesign(record)" v-if="hasPerm('flowableModel:design')">设计</a>
            <a-divider type="vertical" v-if="hasPerm('flowableModel:design') || hasPerm('flowableDefinition:deploy')"/>
            <a-popconfirm v-if="hasPerm('flowableDefinition:deploy')" placement="topRight" title="将此模型部署发布吗？" @confirm="() => handleDeploy(record)">
              <a>部署</a>
            </a-popconfirm>
            <a-divider type="vertical" v-if="hasPerm('flowableDefinition:deploy')"/>
            <a-dropdown>
              <a class="ant-dropdown-link">
                更多 <a-icon type="down"/>
              </a>
              <a-menu slot="overlay" v-if="hasPerm('flowableModel:setAsNew')">
                <a-menu-item v-if="hasPerm('flowableModel:preview')">
                  <a @click="handlePreview(record)">预览</a>
                </a-menu-item>
                <a-menu-item v-if="hasPerm('flowableModel:edit')">
                  <a @click="handleEdit(record)">编辑</a>
                </a-menu-item>
                <a-menu-item v-if="hasPerm('flowableModel:delete')">
                  <a-popconfirm placement="topRight" title="确定删除？" @confirm="() => handleDelete(record)">
                    <a>删除</a>
                  </a-popconfirm>
                </a-menu-item>
              </a-menu>
            </a-dropdown>
          </span>
        </a-table>
        <add-form ref="addForm" @ok="refOk" v-if="hasPerm('flowableModel:add')"/>
        <edit-form ref="editForm" @ok="refOk" v-if="hasPerm('flowableModel:edit')"/>
        <preview ref="preview" v-if="hasPerm('flowableModel:preview')"/>
        <design ref="design" @ok="refOk" v-if="hasPerm('flowableModel:design')"/>
        <deploy-form ref="deployForm" @ok="refOk" v-if="hasPerm('flowableDefinition:deploy')"/>
      </a-spin>
    </a-card>
    <div v-show="versionShow">
      <version ref="version" @ok="closeVersion" v-if="hasPerm('flowableDefinition:version')"/>
    </div>
  </div>
</template>

<script>
  import { Ellipsis } from '@/components'
  import { modelList, modelDelete, modelImportModel } from '@/api/modular/flowable/modelManage'
  import addForm from './addForm'
  import editForm from './editForm'
  import preview from './preview'
  import design from './design'
  import deployForm from './deployForm'
  import version from './version'
  export default {
    components: {
      Ellipsis,
      addForm,
      editForm,
      preview,
      design,
      deployForm,
      version
    },
    data () {
      return {
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 }
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 15 }
        },
        visible: false,
        tableLoading: false,
        Loading: false,
        columns: [],
        loadData: [],
        // 查询参数
        queryParam: {},
        // 界面切换
        indexShow: true,
        versionShow: false
      }
    },
    created () {
      this.getModelList()
      this.addAction()
    },
    methods: {
      /**
       * 初始化table信息
       */
      addAction () {
        this.columns.push(
          {
            title: '模型名称',
            dataIndex: 'name',
            scopedSlots: { customRender: 'name' }
          },
          {
            title: '唯一编码',
            dataIndex: 'key'
          },
          {
            title: '版本',
            dataIndex: 'version',
            scopedSlots: { customRender: 'version' }
          },
          {
            title: '创建时间',
            dataIndex: 'created',
            scopedSlots: { customRender: 'created' }
          },
          {
            title: '创建人',
            dataIndex: 'createdBy'
          },
          {
            title: '描述',
            dataIndex: 'description',
            scopedSlots: { customRender: 'description' }
          }
        )
        if (this.hasPerm('flowableModel:preview') || this.hasPerm('flowableModel:edit') || this.hasPerm('flowableModel:delete')) {
          this.columns.push({
            title: '操作',
            width: '200px',
            dataIndex: 'action',
            scopedSlots: { customRender: 'action' }
          })
        }
      },
      /**
       * 获取列表数据
       */
      getModelList () {
        this.tableLoading = true
        modelList(this.queryParam).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.loadData = res.data
          } else {
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 关闭整个页面
       */
      handleCancel () {
        this.loadData = []
        this.columns = []
      },
      /**
       * 打开version列表
       */
      openVersion (record) {
        this.indexShow = false
        this.versionShow = true
        this.$refs.version.openVersion(record)
      },
      /**
       * 关闭version界面
       */
      closeVersion () {
        this.indexShow = true
        this.versionShow = false
        this.getModelList()
      },
      /**
       * 删除
       */
      handleDelete (record) {
        this.Loading = true
        modelDelete({ id: record.id }).then((res) => {
          this.Loading = false
          if (res.success) {
            this.$message.success('删除成功')
            this.getModelList()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        })
      },
      /**
       * 导入模型
       */
      customRequest (data) {
        const formData = new FormData()
        formData.append('file', data.file)
        this.tableLoading = true
        modelImportModel(formData).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.$message.success('导入成功')
            this.$refs.table.refresh()
          } else {
            this.$message.error('导入失败：' + res.message)
          }
        })
      },
      /**
       * 部署
       */
      handleDeploy (record) {
        this.$refs.deployForm.deploy(record)
      },
      /**
       * 新增
       */
      handleAdd () {
        this.$refs.addForm.add()
      },
      /**
       * 设计
       */
      handleDesign (record) {
        this.$refs.design.design(record)
      },
      /**
       * 编辑
       */
      handleEdit (record) {
        this.$refs.editForm.edit(record)
      },
      /**
       * 预览
       */
      handlePreview (record) {
        this.$refs.preview.preview(record)
      },
      /**
       * 子组件成功后返回
       */
      refOk () {
        this.getModelList()
      }
    }
  }
</script>
