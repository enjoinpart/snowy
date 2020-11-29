<template >
  <a-card :bordered="false">
    <a-spin :spinning="loading">
      <div class="table-page-search-wrapper">
        <a-form layout="inline">
          <a-row :gutter="48">
            <a-col :md="8" :sm="24">
              <a-form-item label="任务名称">
                <a-input v-model="queryParam.name" allow-clear placeholder="请输入任务名称"/>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-form-item label="是否结束">
                <a-select v-model="queryParam.ended" placeholder="请选择是否结束" allow-clear>
                  <a-select-option v-for="(item,index) in endedDictTypeDropDown" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
                </a-select>
              </a-form-item>
            </a-col>
            <a-col :md="8" :sm="24">
              <a-button type="primary" @click="$refs.table.refresh(true)" >查询</a-button>
              <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
              <a-button style="margin-left: 8px" type="dashed" @click="returnPage" icon="rollback">返回</a-button>
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
        <span slot="formatCreateTime" slot-scope="text,record">
          <a-tooltip placement="top" >
            <template slot="title">
              <span>{{ record.createTime }}</span>
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
        <span slot="ended" slot-scope="text">
          {{ endedFilter(text) }}
        </span>
      </s-table>
    </a-spin>
  </a-card>
</template>

<script>
  import { STable } from '@/components'
  import { flowableInstanceTaskPage } from '@/api/modular/flowable/instanceTaskManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'

  export default {
    components: {
      STable
    },

    data () {
      return {
        advanced: false,
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '任务名称',
            dataIndex: 'name'
          },
          {
            title: '办理人',
            dataIndex: 'assigneeInfo'
          },
          {
            title: '创建时间',
            dataIndex: 'formatCreateTime',
            scopedSlots: { customRender: 'formatCreateTime' }
          },
          {
            title: '办理时间',
            dataIndex: 'formatEndTime',
            scopedSlots: { customRender: 'formatEndTime' }
          },
          {
            title: '是否办理',
            dataIndex: 'ended',
            scopedSlots: { customRender: 'ended' }
          },
          {
            title: '任务历时',
            dataIndex: 'duration'
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          this.queryParam.processInstanceId = this.processInstanceId
          if (this.processInstanceId === '') {
             return ''
          } else {
            return flowableInstanceTaskPage(Object.assign(parameter, this.queryParam)).then((res) => {
              return res.data
            })
          }
        },
        selectedRowKeys: [],
        selectedRows: [],
        loading: false,
        endedDictTypeDropDown: [],
        processInstanceId: ''
    }
    },
    created () {
    },

    methods: {
      /**
       * 打开此页面
       */
      openInstanceTask (record) {
        this.processInstanceId = record.id
        this.$refs.table.refresh(true)
        this.sysDictTypeDropDown()
      },

      returnPage () {
        this.$emit('ok')
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
        sysDictTypeDropDown({ code: 'ended_status' }).then((res) => {
          this.endedDictTypeDropDown = res.data
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
