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
      open (record) {
        this.jsonData = JSON.parse(record.flowableFormResource.formJson)
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
