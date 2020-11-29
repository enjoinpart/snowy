<template>
  <div>
    <a-card :bordered="false" v-show="indexCardShow">
      <div class="table-page-search-wrapper" >
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="流程名称">
                <a-input v-model="queryParam.processName" allow-clear placeholder="请输入流程名称"/>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-form-item label="任务名称">
                <a-input v-model="queryParam.name" allow-clear placeholder="请输入任务名称"/>
              </a-form-item>
            </a-col>
            <template v-if="advanced">
              <a-col :md="8" :sm="24">
                <a-form-item label="流程分类">
                  <a-select v-model="queryParam.category" placeholder="请选择流程分类" allow-clear>
                    <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col :md="8" :sm="24">
                <a-form-item label="优先级">
                  <a-input-number placeholder="请选择优先级" v-model="queryParam.priority" style="width: 100%" :min="1" :max="1000" />
                </a-form-item>
              </a-col>
              <a-col :md="12" :sm="24">
                <a-form-item label="创建时间">
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
        <span slot="procInsName" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="formatStartTime" slot-scope="text,record">
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ record.procIns.startTime }}</span>
            </template>
            {{ text }}
          </a-tooltip>
        </span>
        <span slot="formatCreateTime" slot-scope="text,record">
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ record.createTime }}</span>
            </template>
            {{ text }}
          </a-tooltip>
        </span>
        <span slot="dueDate" slot-scope="text">
          <div v-if="text === ''">无</div>
          <div v-else>{{ text }}</div>
        </span>
        <span slot="action" slot-scope="text,record">
          <!--
          <a @click="$refs.tracking.tracking(record.procIns.id)">追踪</a>
          <a-divider type="vertical"/>
          -->
          <a @click="handFormOpen(record)">办理</a>
        </span>
      </s-table>
      <tracking ref="tracking"/>
    </a-card>
    <div>
      <task-form ref="taskForm" @ok="handFormOk" @close="handFormClose" v-show="taskFormCardShow"/>
    </div>
  </div>
</template>
<script>
  import { STable, Ellipsis } from '@/components'
  import { flowableTodoTaskPage } from '@/api/modular/flowable/taskTodoManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import moment from 'moment'
  import tracking from '../../tracking/tracking'
  import taskForm from './taskForm'

  export default {
    components: {
      STable,
      Ellipsis,
      tracking,
      taskForm
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
            title: '流程名称',
            dataIndex: 'procIns.name',
            scopedSlots: { customRender: 'procInsName' }
          },
          {
            title: '发起人',
            dataIndex: 'procIns.startUserName'
          },
          {
            title: '发起时间',
            dataIndex: 'procIns.formatStartTime',
            scopedSlots: { customRender: 'formatStartTime' }
          },
          {
            title: '接收时间',
            dataIndex: 'formatCreateTime',
            scopedSlots: { customRender: 'formatCreateTime' }
          },
          {
            title: '当前节点',
            dataIndex: 'name'
          },
          {
            title: '当前操作人',
            dataIndex: 'assigneeInfo'
          },
          {
            title: '优先级',
            dataIndex: 'priority'
          },
          {
            title: '任务期限',
            dataIndex: 'dueDate',
            scopedSlots: { customRender: 'dueDate' }
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
          return flowableTodoTaskPage(Object.assign(parameter, obj)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        flowableCategoryListData: [],
        taskFormCardShow: false,
        indexCardShow: true
      }
    },
    created () {
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
      /**
       * 获取流程类型
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },
      handFormOpen (record) {
        this.taskFormCardShow = true
        this.indexCardShow = false
        this.$refs.taskForm.open(record)
      },
      handFormOk () {
        this.handFormClose()
      },
      handFormClose () {
        this.$refs.table.refresh()
        this.taskFormCardShow = false
        this.indexCardShow = true
      },
      toggleAdvanced () {
        this.advanced = !this.advanced
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
