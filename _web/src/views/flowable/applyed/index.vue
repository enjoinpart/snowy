<template >
  <div>
    <a-card :bordered="false" v-show="instanceShow">
      <a-spin :spinning="loading">
        <div class="table-page-search-wrapper">
          <a-form layout="inline">
            <a-row :gutter="48">
              <a-col :md="8" :sm="24">
                <a-form-item label="流程分类">
                  <a-select v-model="queryParam.category" placeholder="请选择流程分类" allow-clear>
                    <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col :md="6" :sm="24">
                <a-form-item label="是否结束">
                  <a-select v-model="queryParam.ended" placeholder="请选择是否结束" allow-clear>
                    <a-select-option v-for="(item,index) in endedDictTypeDropDown" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <template v-if="advanced">
                <a-col :md="10" :sm="24">
                  <a-form-item label="发起时间">
                    <a-range-picker
                      v-model="queryParam.dates"
                      :show-time="{
                        hideDisabledOptions: true,
                        defaultValue: [moment('00:00:00', 'HH:mm:ss'), moment('23:59:59', 'HH:mm:ss')],
                      }"
                      format="YYYY-MM-DD HH:mm:ss"
                    />
                  </a-form-item>
                </a-col>
              </template>
              <a-col :md="!advanced && 8 || 24" :sm="24" >
                <span class="table-page-search-submitButtons" :style="advanced && { float: 'right', overflow: 'hidden' } || {} ">
                  <a-button type="primary" @click="$refs.table.refresh(true)" >查询</a-button>
                  <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
                  <a @click="toggleAdvanced" style="margin-left: 8px">
                    {{ advanced ? '收起' : '展开' }}
                    <a-icon :type="advanced ? 'up' : 'down'"/>
                  </a>
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
          <span slot="name" slot-scope="text,record">
            <a @click="openInstanceTaskCom(record)">
              <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
            </a>
          </span>
          <span slot="formatStartTime" slot-scope="text,record">
            <a-tooltip placement="top" >
              <template slot="title">
                <span>{{ record.startTime }}</span>
              </template>
              {{ text }}
            </a-tooltip>
          </span>
          <span slot="formatEndTime" slot-scope="text,record">
            <div v-if="text == null">无</div>
            <a-tooltip placement="top" v-else>
              <template slot="title">
                <span>{{ record.endTime }}</span>
              </template>
              {{ text }}
            </a-tooltip>
          </span>
          <span slot="ended" slot-scope="text" >
            {{ endedFilter(text) }}
          </span>
          <span slot="suspended" slot-scope="text">
            {{ suspendedFilter(text) }}
          </span>
          <span slot="action" slot-scope="text,record">
            <a @click="$refs.tracking.tracking(record.id)">追踪</a>
            <a-divider type="vertical"/>
            <a @click="$refs.seeForm.seeOpen(record)">表单</a>
          </span>
        </s-table>
        <see-form ref="seeForm" @ok="handleOk"/>
        <tracking ref="tracking" @ok="handleOk"/>
      </a-spin>
    </a-card>
    <div v-show="instanceTaskShow">
      <instance-task ref="InstanceTask" @ok="handleReturn"/>
    </div>
  </div>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { flowableInstanceMy } from '@/api/modular/flowable/instanceManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import seeForm from './seeForm'
  import moment from 'moment'
  import InstanceTask from './instanceTask'
  import tracking from '../tracking/tracking'
  export default {
    components: {
      InstanceTask,
      STable,
      Ellipsis,
      seeForm,
      tracking
    },
    data () {
      return {
        advanced: false,
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '流程名称',
            dataIndex: 'name',
            scopedSlots: { customRender: 'name' }
          },
          {
            title: '发起人',
            dataIndex: 'startUserName'
          },
          {
            title: '发起时间',
            dataIndex: 'formatStartTime',
            scopedSlots: { customRender: 'formatStartTime' }
          },
          {
            title: '结束时间',
            dataIndex: 'formatEndTime',
            scopedSlots: { customRender: 'formatEndTime' }
          },
          {
            title: '是否结束',
            dataIndex: 'ended',
            scopedSlots: { customRender: 'ended' }
          },
          {
            title: '是否挂起',
            dataIndex: 'suspended',
            scopedSlots: { customRender: 'suspended' }
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          const dates = this.queryParam.dates
          if (dates != null) {
            this.queryParam.searchBeginTime = moment(dates[0]).format('YYYY-MM-DD HH:mm:ss')
            this.queryParam.searchEndTime = moment(dates[1]).format('YYYY-MM-DD HH:mm:ss')
            if (dates.length < 1) {
              delete this.queryParam.searchBeginTime
              delete this.queryParam.searchEndTime
            }
          }
          const obj = JSON.parse(JSON.stringify(this.queryParam))
          delete obj.dates
          return flowableInstanceMy(Object.assign(parameter, obj)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        suspendedDictTypeDropDown: [],
        loading: false,
        flowableCategoryListData: [],
        endedDictTypeDropDown: [],
        instanceShow: true,
        instanceTaskShow: false
      }
    },
    created () {
      this.sysDictTypeDropDown()
      this.flowableCategoryList()
      this.columns.push({
        title: '操作',
        width: '150px',
        dataIndex: 'action',
        scopedSlots: { customRender: 'action' }
      })
    },
    methods: {
      moment,
      openInstanceTaskCom (record) {
        this.instanceShow = false
        this.instanceTaskShow = true
        this.$refs.InstanceTask.openInstanceTask(record)
      },
      /**
       * 获取流程类型
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },
      suspendedFilter (suspended) {
        // eslint-disable-next-line eqeqeq
        const values = this.suspendedDictTypeDropDown.filter(item => item.code == suspended.toString())
        if (values.length > 0) {
          return values[0].value
        }
      },
      endedFilter (ended) {
        // eslint-disable-next-line eqeqeq
        const values = this.endedDictTypeDropDown.filter(item => item.code == ended.toString())
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 获取字典数据
       */
      sysDictTypeDropDown () {
        sysDictTypeDropDown({ code: 'suspended_status' }).then((res) => {
          this.suspendedDictTypeDropDown = res.data
        })
        sysDictTypeDropDown({ code: 'ended_status' }).then((res) => {
          this.endedDictTypeDropDown = res.data
        })
      },
      filterOption (input, option) {
        return (
          option.componentOptions.children[0].text.toLowerCase().indexOf(input.toLowerCase()) >= 0
        )
      },
      toggleAdvanced () {
        this.advanced = !this.advanced
      },
      handleOk () {
        this.$refs.table.refresh()
      },
      handleReturn () {
        this.instanceShow = true
        this.instanceTaskShow = false
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
