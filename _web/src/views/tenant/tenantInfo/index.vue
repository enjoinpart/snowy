<template>
  <a-card :bordered="false">
    <a-spin :spinning="Loading">
      <div class="table-page-search-wrapper" v-if="hasPerm('tenantInfo:page')">
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="租户名称" >
                <a-input v-model="queryParam.name" allow-clear placeholder="请输入租户名称"/>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
              <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
            </a-col>
          </a-row>
        </a-form>
      </div>
      <div class="table-operator" v-if="hasPerm('tenantInfo:add')">
        <a-button type="primary" v-if="hasPerm('tenantInfo:add')" icon="plus" @click="$refs.addForm.add()">新增租户</a-button>
      </div>
      <s-table
        ref="table"
        size="default"
        :columns="columns"
        :data="loadData"
        :alert="true"
        :rowKey="(record) => record.id"
        :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange }">
        <span slot="name" slot-scope="text">
          <ellipsis :length="20" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="code" slot-scope="text">
          <ellipsis :length="20" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="action" slot-scope="text, record">
          <a v-if="hasPerm('tenantInfo:edit')" @click="$refs.editForm.edit(record)">编辑</a>
          <a-divider type="vertical" v-if="hasPerm('tenantInfo:edit') & hasPerm('tenantInfo:delete')"/>
          <a-popconfirm v-if="hasPerm('tenantInfo:delete')" placement="topRight" title="确认删除？" @confirm="() => tenantDelete(record)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </s-table>
      <add-form ref="addForm" @ok="handleOk" v-if="hasPerm('tenantInfo:add')"/>
      <edit-form ref="editForm" @ok="handleOk" v-if="hasPerm('tenantInfo:edit')"/>
    </a-spin>
  </a-card>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { tenantPage, tenantDelete } from '@/api/modular/tenant/tenantInfoManage'
  import addForm from './addForm'
  import editForm from './editForm'
  export default {
    components: {
      STable,
      Ellipsis,
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
            title: '租户名称',
            dataIndex: 'name',
            scopedSlots: { customRender: 'name' }
          },
          {
            title: '租户编码',
            dataIndex: 'code',
            scopedSlots: { customRender: 'code' }
          },
          {
            title: '关联的数据库',
            dataIndex: 'dbName'
          },
          {
            title: '创建时间',
            dataIndex: 'createTime'
          }
        ],
        loadData: parameter => {
          return tenantPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        Loading: false,
        jdbcDriverList: []
      }
    },
    created () {
      if (this.hasPerm('tenantInfo:edit') || this.hasPerm('tenantInfo:delete')) {
        this.columns.push({
          title: '操作',
          width: '150px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },
    methods: {
      tenantDelete (record) {
        this.Loading = true
        tenantDelete(record).then((res) => {
          if (res.success) {
            this.$message.success('删除成功')
            this.$refs.table.refresh()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        }).catch((err) => {
          this.$message.error('删除错误：' + err.message)
        }).finally((res) => {
          this.Loading = false
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
