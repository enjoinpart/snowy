<template>
  <div>
    <k-form-design
      ref="kfd"
      :toolbars="toolbars"
      toolbarsTop
      showToolbarsText
      @close="handleClose"
      @save="handleSave"/>
    <!--@close="handleClose"-->
  </div>
</template>
<script>
  import {
    formResourceDesign,
    formResourceDetail
  } from '@/api/modular/flowable/formResourceManage'
  export default {
    data () {
      return {
        confirmLoading: false,
        formrRecord: {},
        formData: {},
        toolbars: ['save', 'preview', 'reset', 'close']
      }
    },

    methods: {
      // 初始化方法
      design (record) {
        this.formrRecord = record
        this.formDetail()
      },
      /**
       * 获取详情数据里面已有的表单数据信息
       */
      formDetail () {
        const values = {}
        values.id = this.formrRecord.id
        this.confirmLoading = true
        formResourceDetail(values).then((res) => {
          this.confirmLoading = false
          if (res.success) {
            this.$refs.kfd.handleSetData(res.data.formJson == null ? '' : JSON.parse(res.data.formJson))
          } else {
            this.$message.error('获取数据失败：' + res.message)
          }
        })
      },
      /**
       * 保存
       */
      handleSave (data) {
        this.formrRecord.formJson = data
        this.confirmLoading = true
        formResourceDesign(this.formrRecord).then((res) => {
          this.confirmLoading = false
          if (res.success) {
            this.$message.success('保存成功')
            this.handleClose()
            this.$refs.kfd.handleClose()
          } else {
            this.$message.error('保存失败：' + res.message)
          }
        })
      },
      /**
       * 关闭
       */
      handleClose () {
        this.$emit('close')
      }
    }
  }
</script>
