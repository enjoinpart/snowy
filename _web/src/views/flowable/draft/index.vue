z<template>
  <div>
    <a-spin :spinning="spinningLoading">
      <a-card :bordered="false" v-show="indexPageShow">
        <div class="table-page-search-wrapper" v-if="hasPerm('flowableDraft:page')">
          <a-form layout="inline">
            <a-row :gutter="48">
              <a-col :md="8" :sm="24">
                <a-form-item label="流程名称" >
                  <a-input v-model="queryParam.processName" allow-clear placeholder="请输入流程名称"/>
                </a-form-item>
              </a-col>
              <a-col :md="8" :sm="24">
                <a-form-item label="流程分类">
                  <a-select v-model="queryParam.category" placeholder="请选择流程分类" allow-clear>
                    <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col :md="8" :sm="24">
                <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
                <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
              </a-col>
            </a-row>
          </a-form>
        </div>
        <s-table
          ref="table"
          size="default"
          :columns="columns"
          :data="loadData"
          :alert="true"
          :rowKey="(record) => record.id"
          :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange }"
        >
          <span slot="action" slot-scope="text, record">
            <a v-if="hasPerm('flowableDraft:addOrUpdate')" @click="openCreateForm(record)">编辑</a>
          </span>
        </s-table>
      </a-card>
    </a-spin>
    <div><create-form ref="createForm" @rollback="rollbackCreateForm" @close="closeCreateForm" v-show="createFormShow"/></div>
  </div>
</template>
<script>
  import { STable } from '@/components'
  import { draftPage, draftDelete } from '@/api/modular/flowable/draftManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import createForm from '../draftapply/createForm'
  export default {
    components: {
      STable,
      createForm
    },
    data () {
      return {
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '流程名称',
            dataIndex: 'processName'
          },
          {
            title: '分类编码',
            dataIndex: 'category'
          },
          {
            title: '分类名称',
            dataIndex: 'categoryName'
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return draftPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        spinningLoading: false,
        flowableCategoryListData: [],
        selectedRowKeys: [],
        selectedRows: [],
        indexPageShow: true,
        createFormShow: false
      }
    },
    created () {
      this.flowableCategoryList()
      if (this.hasPerm('flowableDraft:add') || this.hasPerm('flowableDraft:delete')) {
        this.columns.push({
          title: '操作',
          width: '150px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },
    methods: {
      /**
       * 打开表单填写组件
       */
      openCreateForm (items) {
        if (items.processDefinitionId == null) {
          this.$message.warning('打开失败：表单项定义processDefinitionId不存在')
        } else {
          this.indexPageShow = false
          this.createFormShow = true
          this.$refs.createForm.open(items)
        }
      },
      /**
       * 正常操作后返回
       */
      closeCreateForm (values) {
        this.draftDelete(values)
        this.indexPageShow = true
        this.createFormShow = false
      },
      /**
       * 普通返回
       */
      rollbackCreateForm () {
        this.indexPageShow = true
        this.createFormShow = false
      },
      /**
       * 删除草稿，用于表单界面操作后删除
       */
      draftDelete (id) {
        const params = { id: id }
        this.spinningLoading = true
        draftDelete(params).then((res) => {
          if (res.success) {
            this.$refs.table.refresh()
          } else {
            this.$message.error(res.message)
          }
        }).finally(res => {
          this.spinningLoading = false
        })
      },
      /**
       * 获取流程类型
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },
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
