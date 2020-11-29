<template>
  <a-card :bordered="false">
    <div class="table-page-search-wrapper" v-if="hasPerm('flowableCategory:page')">
      <a-form layout="inline">
        <a-row :gutter="48">
          <a-col :md="8" :sm="24">
            <a-form-item label="分类名称">
              <a-input v-model="queryParam.name" allow-clear placeholder="请输入分类名称"/>
            </a-form-item>
          </a-col>
          <a-col :md="8" :sm="24">
            <a-form-item label="唯一编码">
              <a-input v-model="queryParam.code" allow-clear placeholder="请输入唯一编码"/>
            </a-form-item>
          </a-col>
          <a-col :md="8" :sm="24">
            <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
            <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <div class="table-operator" v-if="hasPerm('flowableCategory:add')">
      <a-button type="primary" @click="$refs.addForm.add()" icon="plus" >新增分类</a-button>
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
        <a @click="$refs.editForm.edit(record)" v-if="hasPerm('flowableCategory:edit')">编辑</a>
        <a-divider type="vertical" v-if="hasPerm('flowableCategory:edit') & hasPerm('flowableCategory:delete')" />
        <a-popconfirm placement="topRight" title="确认删除？" v-if="hasPerm('flowableCategory:delete')" @confirm="() => flowableCategoryDelete(record)">
          <a>删除</a>
        </a-popconfirm>
      </span>
    </s-table>
    <add-form ref="addForm" @ok="handleOk" v-if="hasPerm('flowableCategory:add')"/>
    <edit-form ref="editForm" @ok="handleOk" v-if="hasPerm('flowableCategory:edit')"/>
  </a-card>
</template>
<script>
  import { STable } from '@/components'
  import { flowableCategoryPage, flowableCategoryDelete } from '@/api/modular/flowable/categoryManage'
  import addForm from './addForm'
  import editForm from './editForm'
  export default {
    components: {
      STable,
      addForm,
      editForm
    },
    data () {
      return {
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '分类名称',
            dataIndex: 'name'
          },
          {
            title: '唯一编码',
            dataIndex: 'code'
          },
          {
            title: '排序',
            dataIndex: 'sort'
          },
          {
            title: '备注',
            dataIndex: 'remark'
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return flowableCategoryPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: []
      }
    },
    created () {
      if (this.hasPerm('flowableCategory:edit') || this.hasPerm('flowableCategory:delete')) {
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
       * 删除
       */
      flowableCategoryDelete (record) {
        flowableCategoryDelete(record).then((res) => {
          if (res.success) {
            this.$message.success('删除成功')
            this.$refs.table.refresh()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        }).catch((err) => {
          this.$message.error('删除错误：' + err.message)
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
