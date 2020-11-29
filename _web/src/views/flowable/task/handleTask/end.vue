<template>
  <a-modal
    title="终止"
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
          label="终止原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入终止原因" v-decorator="['comment',{rules: [{required: true, message: '请输入终止原因！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { handleTaskEnd } from '@/api/modular/flowable/handleTaskManage'
  export default {
    data () {
      return {
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 }
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 15 }
        },
        visible: false,
        confirmLoading: false,
        spinningLoading: false,
        recordData: {},
        form: this.$form.createForm(this)
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      open (record) {
        this.recordData = record
        this.visible = true
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            values.processDefinitionId = this.recordData.procIns.id
            values.taskId = this.recordData.id
            handleTaskEnd(values).then((res) => {
              if (res.success) {
                this.$message.success('终止成功')
                this.returnPage()
              } else {
                this.$message.error('终止失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          } else {
            this.confirmLoading = false
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
        this.visible = false
      }
    }
  }
</script>
