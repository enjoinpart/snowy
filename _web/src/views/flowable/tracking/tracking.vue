<template>
  <a-modal
    title="追踪"
    :width="modalWidth"
    :visible="visible"
    :confirmLoading="confirmLoading"
    :footer="null"
    @ok="handleCancel"
    @cancel="handleCancel"
  >
    <a-card :loading="legendLoading" :bordered="false" v-show="legendShow">加载占位展示</a-card>
    <div id="legend" style="display:none;">图例 : &nbsp;
      <span id="complete"><i class="fa fa-square"></i> 已完成</span> &nbsp;
      <span id="running"><i class="fa fa-square"></i> 进行中</span> &nbsp;
      <span id="unexecuted"><i class="fa fa-square"></i> 未执行</span> &nbsp;
    </div>
    <div id="bpmnModel" style="display:none;" ></div>
    <a-card :loading="tableLoading" :bordered="false">
      <a-table
        size="middle"
        :columns="columns"
        :dataSource="loadData"
        :pagination="false"
        :loading="tableLoading"
        :rowKey="(record) => record.taskId"
      >
        <span slot="createTime" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="endTime" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="assigneeInfo" slot-scope="text">
          <ellipsis :length="14" tooltip>{{ text }}</ellipsis>
        </span>
        <span slot="comment" slot-scope="text">
          <ellipsis :length="10" tooltip>{{ text }}</ellipsis>
        </span>
      </a-table>
    </a-card>
  </a-modal>
</template>

<script>
  import { Ellipsis } from '@/components'
  import { flowableInstanceCommentHistory, flowableInstanceTrace } from '@/api/modular/flowable/instanceManage'
  import jQuery from 'jquery'
  import { ajaxSuccess } from '../../../assets/flowable/js/displaymodel.js'
  import 'font-awesome/css/font-awesome.min.css'

  export default {
  components: {
    Ellipsis
  },
    data () {
      return {
        visible: false,
        confirmLoading: false,
        tableLoading: false,
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '环节名称',
            dataIndex: 'name'
          },
          {
            title: '创建时间',
            dataIndex: 'createTime',
            scopedSlots: { customRender: 'createTime' }
          },
          {
            title: '完成时间',
            dataIndex: 'endTime',
            scopedSlots: { customRender: 'endTime' }
          },
          {
            title: '任务历时',
            dataIndex: 'duration'
          },
          {
            title: '操作人',
            dataIndex: 'assigneeInfo',
            scopedSlots: { customRender: 'assigneeInfo' }
          },
          {
            title: '审批意见',
            dataIndex: 'comment',
            scopedSlots: { customRender: 'comment' }
          }
        ],
        loadData: [],
        legendLoading: false,
        legendShow: false,
        modalWidth: 900
      }
    },
    methods: {
      // 初始化方法
      tracking (id) {
        this.queryParam.id = id
        this.visible = true
        this.tableLoading = true
        this.legendShow = true
        this.flowableInstanceTrace()
        flowableInstanceCommentHistory(this.queryParam).then((res) => {
          this.tableLoading = false
          this.loadData = res.data
        })
        this.modalWidth = 900
        // this.getBrowserWidth()
      },
      flowableInstanceTrace () {
        this.legendLoading = true
        flowableInstanceTrace(this.queryParam).then((res) => {
          this.legendLoading = false
          this.legendShow = false
          if (res.success) {
            ajaxSuccess(res.data)
          } else {
            this.$message.error('图形信息：' + res.message)
          }
        })
      },
      handleCancel () {
        this.visible = false
        this.loadData = []
        document.getElementById('bpmnModel').innerHTML = ''
        jQuery('#legend').hide()
        jQuery('#bpmnModel').hide()
      },

      getBrowserWidth () {
        if ((document.body.clientWidth) > 1000) {
          this.modalWidth = (document.body.clientWidth) * 0.8
        }
      }
    }
  }
</script>
<style scoped>
  #legend {
    text-align: center;
    margin: 20px auto;
  }
  #legend #complete {
    color:#52c41a;
  }
  #legend #running {
    color:#e90606;
  }
  #legend #unexecuted {
    color:#585858;
  }
  #bpmnModel {
    margin: 0 auto;
  }
  div[class*='ui-tooltip-kisbpm-'] {
    background-color: #ffffff;
    border-color: #c5c5c5;
    color: #4a4a4a;
    font-family: Verdana;
    font-size: 12px;
  }

  div[class*='ui-tooltip-kisbpm-'] .qtip-content {
    color: #4a4a4a;
    background-color: #ffffff;
    font-family: Verdana;
    font-size: 12px;
  }
  .ui-tooltip-kisbpm-bpmn .qtip-titlebar {
    color: #FFFFFF;
    font-size: 12px;
    background: #2B414F;
  }

  .ui-tooltip-kisbpm-bpmn .qtip-tip {
    background-color: #2B414F;
  }
</style>
