<template>
  <a-modal
    title="流程实例终止"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item v-show="false">
          <a-input v-decorator="['id']" />
        </a-form-item>
        <a-form-item
          label="终止原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入终止原因" v-decorator="['comment',{rules: [{ required: true, message: '请输入终止原因！' }]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { flowableInstanceEnd } from '@/api/modular/flowable/instanceManage'
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
        form: this.$form.createForm(this)
      }
    },
    methods: {
      // 初始化方法
      terminated (id) {
        this.visible = true
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              id: id
            }
          )
        }, 100)
      },

      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            flowableInstanceEnd(values).then((res) => {
              if (res.success) {
                this.$message.success('终止成功')
                this.visible = false
                this.confirmLoading = false
                this.$emit('ok', values)
                this.form.resetFields()
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
      handleCancel () {
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
