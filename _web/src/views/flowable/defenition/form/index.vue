<template>
  <div>
    <div class="table-operator" v-if="hasPerm('flowableForm:add')">
      <a-button @click="handleAdd" :loading="tableLoading" v-if="hasPerm('flowableForm:add')" type="primary" icon="plus" >新增表单</a-button>
    </div>
    <div v-if="hasPerm('flowableForm:list')">
      <a-table
        :columns="columns"
        :dataSource="loadData"
        :pagination="false"
        :loading="tableLoading"
        :rowKey="(record) => record.id"
      >
        <span slot="nodeType" slot-scope="text,record">
          <a-tag
            v-if="text!=null"
            :key="record.id"
            :color="'geekblue'"
          >
            {{ nodeTypeFilter(text) }}
          </a-tag>
        </span>
        <span slot="flowableFormResourceRemark" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="action" slot-scope="text,record">
          <a @click="handleDetail(record)" v-if="hasPerm('flowableForm:detail')">预览</a>
          <a-divider type="vertical" v-if="hasPerm('flowableForm:detail') & hasPerm('flowableForm:edit')"/>
          <a @click="handleEdit(record)" v-if="hasPerm('flowableForm:edit')">编辑</a>
          <a-divider type="vertical" v-if="hasPerm('flowableForm:delete') & hasPerm('flowableEvent:edit')"/>
          <a-popconfirm v-if="hasPerm('flowableForm:delete')" placement="topRight" title="确定删除？" @confirm="() => handleDelete(record)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </a-table>
      <detail ref="detail" v-if="hasPerm('flowableForm:detail')"/>
      <add-form ref="addForm" @ok="refOk" v-if="hasPerm('flowableForm:add')"/>
      <edit-form ref="editForm" @ok="refOk" v-if="hasPerm('flowableForm:edit')"/>
    </div>
  </div>
</template>

<script>
  import { Ellipsis } from '@/components'
  import { formList, formDelete } from '@/api/modular/flowable/formManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import detail from './detail'
  import addForm from './addForm'
  import editForm from './editForm'
  export default {
    components: {
      Ellipsis,
      detail,
      addForm,
      editForm
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
        // 公用
        nodeTypeData: [],
        typeData: [],
        recordData: [],
        actIdShow: false,
        actIdRequired: false,
        actData: [],
        scriptData: []
      }
    },
    methods: {
      /**
       * 打开页面初始化
       */
      formIndex (form) {
        this.recordData = form
        this.queryParam.processDefinitionId = form.id
        this.getformList()
        this.addAction()
        this.getDictData()
      },
      /**
       * 初始化table信息
       */
      addAction () {
        this.columns.push(
          {
            title: '表单名称',
            dataIndex: 'flowableFormResource.name'
          },
          {
            title: '事件节点类型',
            dataIndex: 'nodeType',
            scopedSlots: { customRender: 'nodeType' }
          },
          {
            title: '备注',
            dataIndex: 'flowableFormResource.remark',
            scopedSlots: { customRender: 'flowableFormResourceRemark' }
          }
        )
        if (this.hasPerm('flowableForm:detail') || this.hasPerm('flowableForm:edit') || this.hasPerm('flowableForm:delete')) {
          this.columns.push({
            title: '操作',
            width: '150px',
            dataIndex: 'action',
            scopedSlots: { customRender: 'action' }
          })
        }
      },
      /**
       * 获取列表数据
       */
      getformList () {
        this.tableLoading = true
        formList(this.queryParam).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.loadData = res.data
          } else {
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 获取字典参数
       */
      getDictData () {
        sysDictTypeDropDown({ code: 'form_type' }).then((res) => {
          this.nodeTypeData = res.data
        })
      },
      /**
       * 事件节点类型翻译
       */
      nodeTypeFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.nodeTypeData.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 关闭整个页面
       */
      handleCancel () {
        this.loadData = []
        this.columns = []
      },
      /**
       * 删除
       */
      handleDelete (record) {
        this.Loading = true
        formDelete(record).then((res) => {
          this.Loading = false
          if (res.success) {
            this.$message.success('删除成功')
            this.getformList()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        })
      },
      handleAdd () {
        this.$refs.addForm.add(this.recordData, this.nodeTypeData)
      },
      handleEdit (record) {
        this.$refs.editForm.edit(record, this.nodeTypeData)
      },
      handleDetail (record) {
        this.$refs.detail.open(record)
      },
      refOk () {
        this.getformList()
      }
    }
  }
</script>
