<template>
  <a-card
    :bordered="false"
    :loading="cardLoading"
  >
    <a-spin :spinning="spinningLoading">
      <div>
        <a-button class="but_item" type="dashed" @click="returnPage" icon="rollback" :loading="butLoading">返回</a-button>
        <a-button class="but_item" @click="handleOpenSubmit" :disabled="buttonList.submit === 'N'" type="primary" icon="check">提交</a-button>
        <a-button class="but_item" @click="handleSave" :disabled="buttonList.save === 'N'">保存</a-button>
        <a-button class="but_item" @click="handleOpenBack" :disabled="buttonList.back === 'N'">退回</a-button>
        <a-button class="but_item" @click="handleOpenTurn" :disabled="buttonList.turn === 'N'">转办</a-button>
        <a-button class="but_item" @click="handleOpenEntrust" :disabled="buttonList.entrust === 'N'">委托</a-button>
        <a-button class="but_item" @click="handleOpenEnd" :disabled="buttonList.end === 'N'">终止</a-button>
        <a-button class="but_item" @click="$refs.tracking.tracking(recordData.procIns.id)" :disabled="buttonList.trace === 'N'">追踪</a-button>
        <a-popconfirm placement="top" :title="'确定挂起该任务？'" @confirm="() => handleSuspend()">
          <a-button class="but_item" :disabled="buttonList.suspend === 'N'">挂起</a-button>
        </a-popconfirm>
        <a-button class="but_item" @click="handleOpenJump" :disabled="buttonList.jump === 'N'">跳转</a-button>
        <a-button class="but_item" @click="handleOpenAddSign" :disabled="buttonList.addSign === 'N'">加签</a-button>
        <a-button class="but_item" @click="handleOpenDeleteSign" :disabled="buttonList.deleteSign === 'N'">减签</a-button>
        <a-button class="but_item" @click="handlePrintRow" >打印</a-button>
      </div>
      <div>
        <submit ref="submit" @close="returnPage" v-if="buttonList.submit === 'Y'"/>
        <back ref="back" @close="returnPage" v-if="buttonList.back === 'Y'"/>
        <turn ref="turn" @close="returnPage" v-if="buttonList.turn === 'Y'"/>
        <entrust ref="entrust" @close="returnPage" v-if="buttonList.entrust === 'Y'"/>
        <end ref="end" @close="returnPage" v-if="buttonList.end === 'Y'"/>
        <tracking ref="tracking" v-if="buttonList.trace === 'Y'"/>
        <jump ref="jump" @close="returnPage" v-if="buttonList.jump === 'Y'"/>
        <add-sign ref="addSign" @close="returnPage" v-if="buttonList.addSign === 'Y'"/>
        <delete-sign ref="deleteSign" @close="returnPage" v-if="buttonList.deleteSign === 'Y'"/>
      </div>
      <div id="printDiv">
        <k-form-build ref="kfb" :value="jsonData"/>
      </div>
    </a-spin>
  </a-card>
</template>

<script>
  import { formTaskFormData } from '@/api/modular/flowable/formManage'
  import { handleTaskSave, handleTaskTaskData, handleTaskSuspend } from '@/api/modular/flowable/handleTaskManage'
  import { buttonTrace } from '@/api/modular/flowable/buttonManage'
  import Print from 'print-js'
  // 导入按钮功能的界面
  import submit from '../handleTask/submit'
  import back from '../handleTask/back'
  import turn from '../handleTask/turn'
  import entrust from '../handleTask/entrust'
  import end from '../handleTask/end'
  // import trackingForm from '../todoTask/trackingForm'
  import tracking from '../../tracking/tracking'
  import jump from '../handleTask/jump'
  import addSign from '../handleTask/addSign'
  import deleteSign from '../handleTask/deleteSign'

  export default {
    components: {
      submit,
      back,
      turn,
      entrust,
      end,
      tracking,
      jump,
      addSign,
      deleteSign
    },
    data () {
      return {
        jsonData: {},
        visible: false,
        confirmLoading: false,
        spinningLoading: false,
        cardLoading: false,
        processDefinitionId: '',
        butLoading: false,
        buttonList: {},
        recordData: []
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      open (record) {
        this.recordData = record
        this.formTaskFormDataTaskData(record)
        this.buttonTrace(record)
      },
      /**
       * 当前任务的任务表单及数据
       */
      formTaskFormDataTaskData (record) {
        this.cardLoading = true
        const values = {}
        values.processDefinitionId = record.procIns.procDef.id
        values.actId = record.activityId
        formTaskFormData(values).then((res) => {
          this.cardLoading = false
          if (res.success) {
            this.spinningLoading = true
            this.jsonData = JSON.parse(res.data)
            handleTaskTaskData({ taskId: record.id }).then((res) => {
              this.spinningLoading = false
              if (res.success) {
                this.$refs.kfb.setData(JSON.parse(res.data.formData))
              } else {
                this.$message.error(res.message)
              }
            })
          } else {
            this.$message.error(res.message)
            this.returnPage()
          }
        // eslint-disable-next-line handle-callback-err
        }).catch(err => {
          this.jsonData = {}
        })
      },
      /**
       * 获取当前任务的按钮
       */
      buttonTrace (record) {
        buttonTrace({ actId: record.activityId }).then((res) => {
          this.buttonList = res.data
        })
      },
      /**
       * 返回并清空已生成的表单
       */
      returnPage () {
        this.$emit('close')
        this.jsonData = {}
      },
      handleOpenSubmit () {
        this.$refs.kfb.getData().then(values => {
          const formData = {}
          formData.formData = JSON.stringify(values)
          this.$refs.submit.open(this.recordData, this.buttonList, formData)
        }).catch(() => {})
      },
      /**
       * 保存
       */
      handleSave () {
        this.$refs.kfb.getData().then(values => {
          values.processDefinitionId = this.recordData.processDefinitionId
          this.spinningLoading = true
          const formData = {}
          formData.formData = JSON.stringify(values)
          const req = {}
          req.taskId = this.recordData.id
          req.variables = formData
          handleTaskSave(req).then((res) => {
            this.spinningLoading = false
            if (res.success) {
              this.$message.success('保存成功')
              this.returnPage()
            } else {
              this.$message.error('保存失败：' + res.message)
            }
          })
        }).catch(() => {
          // console.log('验证未通过，获取失败')
        })
      },
      handleOpenBack () {
        this.$refs.back.open(this.recordData)
      },
      handleOpenTurn () {
        this.$refs.turn.open(this.recordData)
      },
      handleOpenEntrust () {
        this.$refs.entrust.open(this.recordData)
      },
      handleOpenEnd () {
        this.$refs.end.open(this.recordData)
      },
      handleSuspend () {
        this.spinningLoading = true
        handleTaskSuspend({ taskId: this.recordData.id }).then((res) => {
          this.spinningLoading = false
          if (res.success) {
            this.$message.success('挂起成功')
            this.returnPage()
          } else {
            this.$message.error('挂起失败：' + res.message)
          }
        })
      },
      handleOpenJump () {
        this.$refs.jump.open(this.recordData)
      },
      handleOpenAddSign () {
        this.$refs.addSign.open(this.recordData)
      },
      handleOpenDeleteSign () {
        this.$refs.deleteSign.open(this.recordData)
      },
      handlePrintRow (index, row) {
        Print({ printable: 'printDiv', type: 'html', targetStyles: ['*'] })
      }
    }
  }
</script>
<style>
  .but_item{
    margin-right: 10px;
    margin-bottom: 20px;
  }
</style>
