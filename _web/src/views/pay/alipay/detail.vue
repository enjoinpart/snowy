<template>
  <a-modal
    title="交易详情"
    :width="600"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleCancel"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item
          label="交易详情"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          {{ detailData }}
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

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
        detailData: {},
        form: this.$form.createForm(this)
      }
    },
    methods: {
      // 初始化方法
      detailOpen (data) {
        this.detailData = data
        this.visible = true
      },
      handleCancel () {
        this.detailData = {}
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
