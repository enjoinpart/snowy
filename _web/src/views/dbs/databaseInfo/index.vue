<template>
  <a-card :bordered="false">
    <a-spin :spinning="Loading">
      <div class="table-page-search-wrapper" v-if="hasPerm('databaseInfo:page')">
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="数据库名称" >
                <a-input v-model="queryParam.dbName" allow-clear placeholder="请输入数据库名称"/>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
              <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
            </a-col>
          </a-row>
        </a-form>
      </div>
      <div class="table-operator" v-if="hasPerm('databaseInfo:add')" >
        <a-button type="primary" v-if="hasPerm('databaseInfo:add')" icon="plus" @click="$refs.addForm.add()">新增数据源</a-button>
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
        <span slot="dbName" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="jdbcDriver" slot-scope="text">
          {{ jdbcDriverFilter(text) }}
        </span>
        <span slot="userName" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="jdbcUrl" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="createTime" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="remarks" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="action" slot-scope="text, record">
          <a v-if="hasPerm('databaseInfo:edit')" @click="$refs.editForm.edit(record)">编辑</a>
          <a-divider type="vertical" v-if="hasPerm('databaseInfo:edit') & hasPerm('databaseInfo:delete')"/>
          <a-popconfirm v-if="hasPerm('databaseInfo:delete')" placement="topRight" title="确认删除？" @confirm="() => databaseInfoDelete(record)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </s-table>
      <add-form ref="addForm" @ok="handleOk" v-if="hasPerm('databaseInfo:add')"/>
      <edit-form ref="editForm" @ok="handleOk" v-if="hasPerm('databaseInfo:edit')"/>
    </a-spin>
  </a-card>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { databaseInfoPage, databaseInfoDelete } from '@/api/modular/dbs/databaseInfoManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
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
            title: '数据库名称',
            dataIndex: 'dbName',
            scopedSlots: { customRender: 'dbName' }
          },
          {
            title: 'JDBC驱动类型',
            dataIndex: 'jdbcDriver',
            scopedSlots: { customRender: 'jdbcDriver' }
          },
          {
            title: '数据库账号',
            dataIndex: 'userName',
            scopedSlots: { customRender: 'userName' }
          },
          {
            title: 'JDBC的URL',
            dataIndex: 'jdbcUrl',
            scopedSlots: { customRender: 'jdbcUrl' }
          },
          {
            title: '创建时间',
            dataIndex: 'createTime',
            scopedSlots: { customRender: 'createTime' }
          },
          {
            title: '备注',
            dataIndex: 'remarks',
            scopedSlots: { customRender: 'remarks' }
          }
        ],
        loadData: parameter => {
          return databaseInfoPage(Object.assign(parameter, this.queryParam)).then((res) => {
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
      this.sysDictTypeDropDown()
      if (this.hasPerm('databaseInfo:edit') || this.hasPerm('databaseInfo:delete')) {
        this.columns.push({
          title: '操作',
          width: '150px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },
    methods: {
      sysDictTypeDropDown () {
        const params = {
          code: 'jdbc_driver'
        }
        sysDictTypeDropDown(params).then((res) => {
          this.jdbcDriverList = res.data
        })
      },
      jdbcDriverFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.jdbcDriverList.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      databaseInfoDelete (record) {
        this.Loading = true
        databaseInfoDelete(record).then((res) => {
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
