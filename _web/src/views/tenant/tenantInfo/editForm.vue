<template>
  <a-modal
    title="编辑租户"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item v-show="false"><a-input v-decorator="['id']"/></a-form-item>
        <a-form-item
          label="租户名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入租户名称" v-decorator="['name', {rules: [{required: true, message: '请输入租户名称！'}]}]" />
        </a-form-item>
        <a-form-item
          label="租户编码"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入租户编码" v-decorator="['code', {rules: [{required: true, message: '请输入租户编码！'}]}]" />
        </a-form-item>
        <a-form-item
          label="租户管理员"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          <a-input placeholder="请输入租户管理员" :disabled="true" v-decorator="['adminUsername', {initialValue: 'superAdmin'}]" />
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { tenantEdit } from '@/api/modular/tenant/tenantInfoManage'

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
      edit (record) {
        this.visible = true
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              id: record.id,
              name: record.name,
              code: record.code
            }
          )
        }, 100)
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            tenantEdit(values).then((res) => {
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
