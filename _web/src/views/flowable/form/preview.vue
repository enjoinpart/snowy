<template>
  <a-modal
    :width="1200"
    :visible="visible"
    :confirmLoading="confirmLoading"
    :footer="null"
    @cancel="handleCancel"
  >
    <a-card
      :bordered="false"
      :loading="cardLoading"
    >
      <k-form-build :value="jsonData" />
    </a-card>
  </a-modal>
</template>

<script>
  export default {
    data () {
      return {
        jsonData: {},
        visible: false,
        confirmLoading: false,
        cardLoading: false
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      preview (record) {
        if (record.formJson === null) {
          this.$message.error('无可预览的表单数据')
          return
        }
        this.jsonData = JSON.parse(record.formJson)
        this.visible = true
      },
      /**
       * 关闭界面，置空表单
       */
      handleCancel () {
        this.jsonData = {}
        this.visible = false
      }
    }
  }
</script>
