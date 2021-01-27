<template>
  <a-card :bordered="false" :loading="cardLoading">
    <a-spin :spinning="spinningLoading">
      <div>
        <a-button class="but_item" type="dashed" @click="rollbackPage" icon="rollback">返回</a-button>
        <a-button class="but_item" type="primary" @click="handleSubmit">发布</a-button>
        <a-button
          class="but_item"
          @click="handleApplyed"
          v-if="hasPerm('flowableDraft:addOrUpdate')"
        >存为草稿</a-button>
        <a-button class="but_item" @click="handleReset">重置</a-button>
        <a-button
          class="but_item"
          @click="$refs.tracking.tracking(recordData.processDefinitionId)"
          v-if="hasPerm('flowableDefinition:trace')"
        >流程图</a-button>
      </div>
      <component v-if="isCustomForm" ref="customFormRef" :is="allCustomFormComps[formCompKey]"></component>
      <k-form-build v-else ref="kfb" :value="jsonData" />
      <tracking ref="tracking" v-if="hasPerm('flowableDefinition:trace')" />
    </a-spin>
  </a-card>
</template>
<script>
  import { formStartFormData } from '@/api/modular/flowable/formManage'
  import { handleTaskStart } from '@/api/modular/flowable/handleTaskManage'
  import { draftAdd } from '@/api/modular/flowable/draftManage'
  import allCustomForm from '@/views/main/customForm/index.js'
  import tracking from '../defenition/tracking'

  export default {
    components: {
      tracking
    },
    data() {
      return {
        allCustomFormComps: allCustomForm,
        jsonData: {},
        visible: false,
        confirmLoading: false,
        cardLoading: false,
        processDefinitionId: '',
        spinningLoading: false,
        recordData: {},
        // 是否为自行开发表单
        isCustomForm: false,
        formCompKey: ''
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      open(record) {
        this.recordData = record
        this.processDefinitionId = record.processDefinitionId
        this.formStartFormData(record)
      },
      /**
       * 获取预加载表单的数据
       */
      formStartFormData(record) {
        this.cardLoading = true
        formStartFormData({ processDefinitionId: record.processDefinitionId }).then(res => {
          this.cardLoading = false
          if (!res.success) {
            this.$message.error(res.message)
            this.returnPage()
            return
          }
          this.isCustomForm = !this.isJSON(res.data)
          if (this.isCustomForm) {
            this.formCompKey = res.data
            this.$nextTick(() => {
              this.$refs.customFormRef.init(record.formData)
            })
            return
          }
          this.jsonData = JSON.parse(res.data)
          if (record.formData != null) {
            setTimeout(() => {
              this.$refs.kfb.setData(JSON.parse(record.formData))
            }, 100)
          }
        })
      },
      /**
       * 判断字符串是否为 JSON
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
       * 提交表单
       */
      handleSubmit() {
        // 自定义表单提交
        if (this.isCustomForm) {
          this.$refs.customFormRef
            .getDataForSubmit()
            .then(response => {
              const formData = {}
              formData.formData = JSON.stringify(response)
              const params = {}
              params.processDefinitionId = this.processDefinitionId
              params.variables = formData

              this.postSubmit(params)
            })
            .catch(() => {
            })
        } else {
          // 在线设计表单提交
          this.$refs.kfb
            .getData()
            .then(values => {
              const formData = {}
              formData.formData = JSON.stringify(values)
              const subReq = {}
              subReq.processDefinitionId = this.processDefinitionId
              subReq.variables = formData
              this.postSubmit(subReq)
            })
            .catch(() => {
            })
        }
      },
      /*
       * 提交表单 接口调取
       */
      postSubmit(params) {
        this.spinningLoading = true
        handleTaskStart(params).then(res => {
          this.spinningLoading = false
          if (res.success) {
            this.$message.success('发起成功')
            this.returnPage()
          } else {
            this.$message.error('发起失败：' + res.message)
          }
        })
      },

      /**
       * 存为草稿
       */
      handleApplyed() {
        // 定制化表单存为草稿
        if (this.isCustomForm) {
          this.$refs.customFormRef
            .getDataForDraft()
            .then(response => {
              const params = {
                processDefinitionId: this.recordData.processDefinitionId,
                formJson: JSON.stringify(this.jsonData),
                processName: this.recordData.name || this.recordData.processName,
                category: this.recordData.category,
                categoryName: this.recordData.categoryName,
                formData: JSON.stringify(response)
              }
              this.spinningLoading = true
              this.postDraftAdd(params)
            })
            .catch(() => {
              console.log('验证未通过，获取失败')
            })
        } else {
          // 在线设计表单 存为草稿
          this.$refs.kfb
            .getData()
            .then(values => {
              const params = {
                processDefinitionId: this.recordData.processDefinitionId,
                formJson: JSON.stringify(this.jsonData),
                processName: this.recordData.name === undefined ? this.recordData.processName : this.recordData.name,
                category: this.recordData.category,
                categoryName: this.recordData.categoryName,
                formData: JSON.stringify(values)
              }
              this.postDraftAdd(params)
            })
            .catch(() => {
            })
        }
      },
      /*
       *存为草稿接口调取
       */
      postDraftAdd(params) {
        this.spinningLoading = true
        draftAdd(params)
          .then(res => {
            if (res.success) {
              this.$message.success('存为草稿成功')
              this.returnPage()
            } else {
              this.$message.error('存为草稿失败：' + res.message)
            }
            this.spinningLoading = false
          })
          .finally(res => {
            this.spinningLoading = false
          })
      },
      /**
       * 返回并清空已生成的表单
       */
      returnPage() {
        const recordId = this.recordData.id
        this.$emit('close', recordId)
        this.jsonData = {}
        this.recordData = {}
      },
      /**
       * 正常返回
       */
      rollbackPage() {
        this.$emit('rollback')
        this.jsonData = {}
        this.recordData = {}
        this.formCompKey = ''
      },
      /**
       * 重置表单
       */
      handleReset() {
        this.isCustomForm ? this.$refs.customFormRef.reset() : this.$refs.kfb.reset()
      }
    }
  }
</script>
<style>
  .but_item {
    margin-right: 8px;
    margin-bottom: 10px;
  }
</style>
