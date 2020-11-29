<template >
  <a-card :bordered="false">
    <a-spin :spinning="loading">
      <div class="table-operator">
        <a-button style="margin-left: 8px" type="dashed" @click="returnPage" icon="rollback">返回</a-button>
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
        <span slot="version" slot-scope="text">
          V{{ text }}.0
        </span>
        <span slot="description" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="action" slot-scope="text,record">
          <a-popconfirm v-if="hasPerm('flowableModel:setAsNew')" placement="topRight" title="确定将此设为新版？" @confirm="() => handleSetAsNew(record)">
            <a>设为新版</a>
          </a-popconfirm>
        </span>
      </a-table>
    </a-spin>
  </a-card>
</template>

<script>
  import { Ellipsis } from '@/components'
  import { modelSetAsNew, modelVersion } from '@/api/modular/flowable/modelManage'

  export default {
    components: {
      Ellipsis
    },

    data () {
      return {
        loading: false,
        tableLoading: false,
        columns: [],
        loadData: [],
        recordData: {}
      }
    },
    methods: {
      /**
       * 打开此页面
       */
      openVersion (record) {
        this.recordData = record
        this.getModelList()
        this.addAction()
      },
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
        if (this.hasPerm('flowableModel:setAsNew')) {
          this.columns.push({
            title: '操作',
            width: '100px',
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
        modelVersion({ id: this.recordData.id }).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.loadData = res.data
          } else {
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 设为新版
       */
      handleSetAsNew (record) {
        this.loading = true
        modelSetAsNew({ id: record.id, modelId: this.recordData.id }).then((res) => {
          this.loading = false
          if (res.success) {
            this.$message.success('设为新版成功')
            this.getModelList()
          } else {
            this.$message.error('设为新版失败：' + res.message)
          }
        })
      },
      returnPage () {
        this.columns = []
        this.loadData = []
        this.recordData = {}
        this.$emit('ok')
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
