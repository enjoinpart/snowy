<template>
  <a-card :bordered="false">
    <div class="table-page-search-wrapper" v-if="hasPerm('flowableShortcut:page')">
      <a-form layout="inline">
        <a-row :gutter="48">
          <a-col :md="8" :sm="24">
            <a-form-item label="申请名称" >
              <a-input v-model="queryParam.name" allow-clear placeholder="请输入申请名称"/>
            </a-form-item>
          </a-col>
          <a-col :md="8" :sm="24">
            <a-form-item label="流程分类">
              <a-select v-model="queryParam.category" placeholder="请选择流程分类" allow-clear>
                <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
              </a-select>
            </a-form-item>
          </a-col>
          <a-col :md="!advanced && 8 || 24" :sm="24">
            <span class="table-page-search-submitButtons" :style="advanced && { float: 'right', overflow: 'hidden' } || {} ">
              <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
              <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
            </span>
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
      <span slot="icon" slot-scope="text">
        <div v-if="text != ''">
          <a-icon :type="text"/>
        </div>
      </span>
      <span slot="status" slot-scope="text">
        {{ statusFilter(text) }}
      </span>
      <span slot="action" slot-scope="text, record">
        <a v-if="hasPerm('flowableShortcut:edit')" @click="$refs.editForm.edit(record)">编辑</a>
        <a-divider type="vertical" v-if="hasPerm('flowableShortcut:edit') & hasPerm('flowableShortcut:delete')"/>
        <a-popconfirm v-if="hasPerm('flowableShortcut:delete')" placement="topRight" title="确认删除？" @confirm="() => flowableShortcutDelete(record)">
          <a>删除</a>
        </a-popconfirm>
      </span>
    </s-table>
    <edit-form ref="editForm" @ok="handleOk" />
  </a-card>
</template>

<script>
  import { STable } from '@/components'
  import { flowableShortcutPage, flowableShortcutDelete } from '@/api/modular/flowable/shortcutManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import editForm from './editForm'

  export default {
    components: {
      STable,
      editForm
    },

    data () {
      return {

        // 高级搜索 展开/关闭
        advanced: false,
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '入口名称',
            dataIndex: 'name'
          },
          {
            title: '图标',
            dataIndex: 'icon',
            scopedSlots: { customRender: 'icon' }
          },
          {
            title: '分类名称',
            dataIndex: 'categoryName'
          },
          {
            title: '排序',
            dataIndex: 'sort'
          },
          {
            title: '状态',
            dataIndex: 'status',
            scopedSlots: { customRender: 'status' }
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return flowableShortcutPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        flowableCategoryListData: [],
        statusDictTypeDropDown: []
    }
    },

    created () {
      this.flowableCategoryList()
      this.sysDictTypeDropDown()
      if (this.hasPerm('flowableShortcut:edit') || this.hasPerm('flowableShortcut:delete')) {
        this.columns.push({
          title: '操作',
          width: '150px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },

    methods: {

      statusFilter (status) {
        // eslint-disable-next-line eqeqeq
        const values = this.statusDictTypeDropDown.filter(item => item.code == status)
        if (values.length > 0) {
          return values[0].value
        }
      },

      /**
       * 获取字典数据
       */
      sysDictTypeDropDown () {
        sysDictTypeDropDown({ code: 'common_status' }).then((res) => {
          this.statusDictTypeDropDown = res.data
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

      flowableShortcutDelete (record) {
        flowableShortcutDelete(record).then((res) => {
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

      toggleAdvanced () {
        this.advanced = !this.advanced
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
