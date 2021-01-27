<template>
  <a-modal
    :width="1200"
    :visible="visible"
    :confirmLoading="confirmLoading"
    :footer="null"
    @cancel="handleCancel"
  >
    <a-card :bordered="false" :loading="cardLoading">
      <component v-if="isCustomForm" ref="customFormRef" :is="allCustomFormComps[formCompKey]"></component>

      <k-form-build v-else ref="kfb" :value="jsonData" />
    </a-card>
  </a-modal>
</template>
<script>
  import { formgGlobalFormData } from '@/api/modular/flowable/formManage'
  import { flowableInstanceFormData } from '@/api/modular/flowable/instanceManage'
  import allCustomForm from '@/views/main/customForm/index.js'

  export default {
    data() {
      return {
        allCustomFormComps: allCustomForm,
        jsonData: {},
        visible: false,
        confirmLoading: false,
        cardLoading: false,
        // 是否为自定义表单
        isCustomForm: false,
        formCompKey: ''
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      seeOpen(record) {
        this.visible = true
        this.cardLoading = true
        this.formgGlobalFormData(record)
      },
      /*
       * 判断字符串是否为 JSON
       * return Boolean
       */
      isJSON(str) {
        if (typeof str === 'string') {
          try {
            const obj = JSON.parse(str)
            if (typeof obj === 'object' && obj) {
              return true
            } else {
              return false
            }
          } catch (e) {
            return false
          }
        }
      },
      /**
       * 获取表单数据
       */
      formgGlobalFormData(record) {
        const params = { processDefinitionId: record.procDef.id }
        formgGlobalFormData(params).then(res => {
          if (!res.success) {
            this.cardLoading = false
            this.$message.error(res.message)
            return
          }

          this.isCustomForm = !this.isJSON(res.data)

          // 自定义表单流程
          if (this.isCustomForm) {
            console.log('自定义的表单')
            this.formCompKey = res.data
            this.flowableInstanceFormData(record)
          } else {
            // 在线设计表单流程
            this.jsonData = JSON.parse(res.data)
            this.flowableInstanceFormData(record)
          }
          // if (res.success) {
          //   this.jsonData = JSON.parse(res.data)
          //   this.flowableInstanceFormData(record)
          // } else {
          //   this.cardLoading = false
          //   this.$message.error(res.message)
          // }
        })
      },

      /**
       * 流程实例中表单的数据
       */
      flowableInstanceFormData(record) {
        const params = { id: record.id }
        flowableInstanceFormData(params).then(res => {
          this.cardLoading = false
          if (res.success) {
            if (res.data.formData === undefined) {
              this.$message.warning('未找到表单数据')
            } else {
              setTimeout(() => {
                this.isCustomForm
                  ? this.$refs.customFormRef.init(res.data.formData)
                  : this.$refs.kfb.setData(JSON.parse(res.data.formData))
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
      handleCancel() {
        this.jsonData = {}
        this.visible = false
      }
    }
  }
</script>
