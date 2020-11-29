<template>
  <a-modal
    title="模型编辑"
    :width="600"
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
          label="模型名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入模型名称" v-decorator="['name', {rules: [{required: true, message: '请输入模型名称！'}]}]" />
        </a-form-item>
        <a-form-item
          label="唯一编码"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入唯一编码" v-decorator="['key', {rules: [{required: true, message: '请输入唯一编码！'}]}]" />
        </a-form-item>
        <a-form-item
          label="描述"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入描述" v-decorator="['description']"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { modelEdit } from '@/api/modular/flowable/modelManage'

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
      edit (record) {
        this.visible = true
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              id: record.id,
              name: record.name,
              key: record.key,
              description: record.description
            }
          )
        }, 100)
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            modelEdit(values).then((res) => {
              if (res.success) {
                this.$message.success('编辑成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('编辑失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
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
