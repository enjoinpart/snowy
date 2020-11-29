<template>
  <div>
    <a-card :bordered="false" v-show="indexPageShow">
      <div class="table-page-search-wrapper" v-if="hasPerm('flowableFormResource:page')">
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="表单名称" >
                <a-input v-model="queryParam.name" allow-clear placeholder="请输入表单名称"/>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-form-item label="唯一编码" >
                <a-input v-model="queryParam.code" allow-clear placeholder="请输入唯一编码" />
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
              <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
            </a-col>
          </a-row>
        </a-form>
      </div>
      <div class="table-operator" v-if="hasPerm('flowableFormResource:add')" >
        <a-button type="primary" v-if="hasPerm('flowableFormResource:add')" icon="plus" @click="$refs.addForm.add()">新增表单</a-button>
      </div>
      <s-table
        ref="table"
        size="default"
        :columns="columns"
        :data="loadData"
        :alert="true"
        :rowKey="(record) => record.code"
        :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange }"
      >
        <span slot="category" slot-scope="text">
          {{ categoryFilter(text) }}
        </span>
        <span slot="remark" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="action" slot-scope="text, record">
          <a @click="$refs.preview.preview(record)">预览</a>
          <a-divider type="vertical" v-if="hasPerm('flowableFormResource:design')"/>
          <a @click="openDesign(record)" v-if="hasPerm('flowableFormResource:design')" >设计</a>
          <a-divider type="vertical"/>
          <a-dropdown>
            <a class="ant-dropdown-link">
              更多 <a-icon type="down"/>
            </a>
            <a-menu slot="overlay">
              <a-menu-item>
                <a v-if="hasPerm('flowableFormResource:add')" @click="$refs.copyForm.copy(record)">复制</a>
              </a-menu-item>
              <a-menu-item v-if="hasPerm('flowableFormResource:edit')">
                <a @click="$refs.editForm.edit(record)">编辑</a>
              </a-menu-item>
              <a-menu-item v-if="hasPerm('flowableFormResource:delete')">
                <a-popconfirm placement="topRight" title="确认删除？" @confirm="() => formResourceDelete(record)">
                  <a>删除</a>
                </a-popconfirm>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
        </span>
      </s-table>
      <add-form ref="addForm" @ok="handleOk" v-if="hasPerm('flowableFormResource:add')"/>
      <edit-form ref="editForm" @ok="handleOk" v-if="hasPerm('flowableFormResource:edit')"/>
      <copy-form ref="copyForm" @ok="handleOk" v-if="hasPerm('flowableFormResource:add')"/>
      <preview ref="preview"/>
    </a-card>
    <div v-show="designFormShow">
      <design-form ref="designForm" @close="closeDesign" v-if="hasPerm('flowableFormResource:design')"/>
    </div>
  </div>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { formResourcePage, formResourceDelete } from '@/api/modular/flowable/formResourceManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import addForm from './addForm'
  import editForm from './editForm'
  import designForm from './designForm'
  import copyForm from './copyForm'
  import preview from './preview'
  export default {
    components: {
      Ellipsis,
      STable,
      addForm,
      editForm,
      designForm,
      copyForm,
      preview
    },
    data () {
      return {
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '表单名称',
            dataIndex: 'name'
          },
          {
            title: '唯一编码',
            dataIndex: 'code'
          },
          {
            title: '表单分类',
            dataIndex: 'category',
            scopedSlots: { customRender: 'category' }
          },
          {
            title: '备注',
            dataIndex: 'remark',
            scopedSlots: { customRender: 'remark' }
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return formResourcePage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        flowableCategoryListData: [],
        indexPageShow: true,
        designFormShow: false
      }
    },
    created () {
      this.flowableCategoryList()
      if (this.hasPerm('flowableFormResource:design') || this.hasPerm('flowableFormResource:edit') || this.hasPerm('flowableFormResource:delete')) {
        this.columns.push({
          title: '操作',
          width: '200px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },
    methods: {
      /**
       * 打开表单设计
       */
      openDesign (record) {
        this.indexPageShow = false
        this.designFormShow = true
        this.$refs.designForm.design(record)
      },
      /**
       * 关闭表单设计
       */
      closeDesign () {
        this.indexPageShow = true
        this.designFormShow = false
        this.$refs.table.refresh()
      },
      /**
       * 获取分类
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },
      categoryFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.flowableCategoryListData.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].name
        }
      },
      /**
       * 删除
       */
      formResourceDelete (record) {
        formResourceDelete(record).then((res) => {
          if (res.success) {
            this.$message.success('删除成功')
            this.$refs.table.refresh()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        })
      },
      /**
       * 回调事件
       */
      handleOk () {
        this.$refs.table.refresh()
      },
      onSelectChange (selectedRowKeys, selectedRows) {
        this.selectedRowKeys = selectedRowKeys
        this.selectedRows = selectedRows
      }
    }
  }
</script>

<style lang="less">
  .table-operator {
    margin-bottom: 18px;
  }
  button {
    margin-right: 8px;
  }
</style>
