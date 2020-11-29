<template>
  <a-card :bordered="false">
    <a-spin :spinning="Loading">
      <div class="table-page-search-wrapper" v-if="hasPerm('aliPayMgr:tradeHisQuery')">
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="交易状态" >
                <a-select v-model="queryParam.status" allow-clear placeholder="请选择交易状态">
                  <a-select-option v-for="(item,index) in statusList" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
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
        <span slot="outTradeNo" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="tradeNo" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="amount" slot-scope="text">
          {{ text | Fmoney }}
        </span>
        <span slot="billDate" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="subject" slot-scope="text">
          <ellipsis :length="20" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="body" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="status" slot-scope="text,record">
          <a-tag
            v-if="text!=null & text === 1"
            :key="record.id"
            :color="'green'"
          >
            {{ statusFilter(text) }}
          </a-tag>
          <span v-else>{{ statusFilter(text) }}</span>
        </span>
        <span slot="action" slot-scope="text, record">
          <a v-if="hasPerm('aliPayMgr:tradeQuery') & record.status === 1 " @click="tradeQuery(record)">交易查询</a>
          <a-divider type="vertical" v-if="hasPerm('aliPayMgr:tradeQuery') & record.status === 1 & hasPerm('aliPayMgr:tradeRefundQuery') & record.status === 2"/>
          <a v-if="hasPerm('aliPayMgr:tradeRefundQuery') & record.status === 2" @click="tradeQuery(record)">退款查询</a>
        </span>
      </s-table>
      <detail ref="detail" @ok="handleOk" v-if="hasPerm('aliPayMgr:tradeQuery')"/>
    </a-spin>
  </a-card>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { tradeHisQuery, tradeQuery } from '@/api/modular/pay/aliPayMgrManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import detail from './detail'

  export default {
    components: {
      STable,
      Ellipsis,
      detail
    },
    data () {
      return {
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '商家订单号',
            dataIndex: 'outTradeNo',
            scopedSlots: { customRender: 'outTradeNo' }
          },
          /* {
            title: '支付宝订单号',
            dataIndex: 'tradeNo',
            scopedSlots: { customRender: 'tradeNo' }
          }, */
          {
            title: '交易日期',
            dataIndex: 'billDate',
            scopedSlots: { customRender: 'billDate' }
          },
          {
            title: '交易金额',
            dataIndex: 'amount',
            scopedSlots: { customRender: 'amount' }
          },
          {
            title: '商品名称',
            dataIndex: 'subject',
            scopedSlots: { customRender: 'subject' }
          },
          {
            title: '商品描述',
            dataIndex: 'body',
            scopedSlots: { customRender: 'body' }
          },
          {
            title: '交易状态',
            dataIndex: 'status',
            scopedSlots: { customRender: 'status' }
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return tradeHisQuery(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        Loading: false,
        statusList: []
      }
    },
    created () {
      this.sysDictTypeDropDown()
      if (this.hasPerm('databaseInfo:edit') || this.hasPerm('databaseInfo:delete')) {
        this.columns.push({
          title: '操作',
          width: '200px',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        })
      }
    },
    methods: {
      sysDictTypeDropDown () {
        sysDictTypeDropDown({ code: 'alipay_trade_status' }).then((res) => {
          this.statusList = res.data
        })
      },
      statusFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.statusList.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      tradeQuery (record) {
        const parame = {}
        parame.outTradeNo = record.outTradeNo
        this.Loading = true
        tradeQuery(parame).then((res) => {
          this.Loading = false
          if (res.success) {
            this.$refs.detail.detailOpen(res.data)
          } else {
            this.$message.error(res.message)
          }
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
