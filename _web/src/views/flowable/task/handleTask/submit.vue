<template>
  <a-modal
    title="提交"
    :width="600"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="spinningLoading">
      <a-form :form="form">
        <a-form-item
          label="当前节点"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          {{ this.recordData.name }}
        </a-form-item>
        <a-form-item
          label="审批意见"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入审批意见" v-decorator="['comment',{rules: [{required: true, message: '请输入审批意见！'}]}]"></a-textarea>
        </a-form-item>
        <div v-show="this.buttonList.next === 'Y'">
          <a-form-item
            label="下一步完成人"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            has-feedback
          >
            <a-select show-search :filter-option="filterOption" v-decorator="['nextAssignee']" placeholder="请选择下一步完成人">
              <a-select-option v-for="(item,index) in userSelector" :key="index" :value="item.id" >{{ item.name }}</a-select-option>
            </a-select>
          </a-form-item>
          <a-form-item
            label="下一步完成期限"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            has-feedback
          >
            <a-date-picker
              v-decorator="['nextDueDate']"
              style="width: 100%"
              format="YYYY-MM-DD HH:mm:ss"
              :show-time="{ defaultValue: moment('00:00:00', 'HH:mm:ss') }"
            />
          </a-form-item>
          <a-form-item
            label="下一步优先级"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
          >
            <a-input-number placeholder="请输入下一步优先级" style="width: 100%" v-decorator="['nextPriority',{initialValue: 0}]" :min="0" :max="1000" />
          </a-form-item>
        </div>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { handleTaskSubmit } from '@/api/modular/flowable/handleTaskManage'
  import moment from 'moment'
  import { sysUserSelector } from '@/api/modular/system/userManage'
  export default {
    data () {
      return {
        labelCol: {
          xs: { span: 24 },
          sm: { span: 6 }
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 }
        },
        visible: false,
        confirmLoading: false,
        spinningLoading: false,
        recordData: {},
        buttonList: {},
        formDataReq: {},
        userSelector: [],
        form: this.$form.createForm(this)
      }
    },
    methods: {
      moment,
      /**
       * 初始化方法
       */
      open (record, buttonList, formDataReq) {
        this.formDataReq = formDataReq
        this.buttonList = buttonList
        this.recordData = record
        this.visible = true
        if (this.buttonList.next === 'Y') {
          this.sysUserSelector()
        }
      },
      sysUserSelector () {
        sysUserSelector().then((res) => {
          this.userSelector = res.data
        })
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            if (values.nextDueDate != null) {
              values.nextDueDate = moment(values.nextDueDate).format('YYYY-MM-DD HH:mm:ss')
            } else {
              delete values.nextDueDate
            }
            if (values.nextPriority === 0) {
              delete values.nextPriority
            }
            this.confirmLoading = true
            values.processDefinitionId = this.recordData.procIns.id
            values.taskId = this.recordData.id
            values.variables = this.formDataReq
            handleTaskSubmit(values).then((res) => {
              if (res.success) {
                this.$message.success('审批成功')
                this.returnPage()
              } else {
                this.$message.error('审批失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          }
        })
      },
      /**
       * 返回并清空界面缓存
       */
      returnPage () {
        this.visible = false
        this.form.resetFields()
        this.$emit('close')
      },
      /**
       * 关闭
       */
      handleCancel () {
        this.form.resetFields()
        this.visible = false
      },
      filterOption (input, option) {
        return (
          option.componentOptions.children[0].text.toLowerCase().indexOf(input.toLowerCase()) >= 0
        )
      }
    }
  }
</script>
