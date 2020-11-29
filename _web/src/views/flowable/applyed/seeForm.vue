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
      <k-form-build ref="kfb" :value="jsonData"/>
    </a-card>
  </a-modal>
</template>
<script>
  import { formgGlobalFormData } from '@/api/modular/flowable/formManage'
  import { flowableInstanceFormData } from '@/api/modular/flowable/instanceManage'
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
      seeOpen (record) {
        this.visible = true
        this.cardLoading = true
        this.formgGlobalFormData(record)
      },
      /**
       * 获取表单数据
       */
      formgGlobalFormData (record) {
        const params = { processDefinitionId: record.procDef.id }
        formgGlobalFormData(params).then((res) => {
          if (res.success) {
            this.jsonData = JSON.parse(res.data)
            this.flowableInstanceFormData(record)
          } else {
            this.cardLoading = false
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 流程实例中表单的数据
       */
      flowableInstanceFormData (record) {
        const params = { id: record.id }
        flowableInstanceFormData(params).then((res) => {
          this.cardLoading = false
          if (res.success) {
            if (res.data.formData === undefined) {
              this.$message.warning('未找到表单数据')
            } else {
              setTimeout(() => {
                this.$refs.kfb.setData(JSON.parse(res.data.formData))
              }, 100)
            }
          } else {
            this.$message.error(res.message)
          }
        })
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
