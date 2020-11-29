<template>
  <a-modal
    title="预览"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    :footer="null"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <div style="background:rgb(0, 32, 64); color:#FFF">
        {{ previewData }}
      </div>
    </a-spin>
  </a-modal>
</template>
<script>
  import { modelPreview } from '@/api/modular/flowable/modelManage'
  export default {
    data () {
      return {
        visible: false,
        confirmLoading: false,
        previewData: ''
      }
    },
    methods: {
      // 初始化方法
      preview (record) {
        this.visible = true
        this.confirmLoading = true
        modelPreview({ id: record.id }).then((res) => {
          this.confirmLoading = false
          if (res.success) {
            this.previewData = res.data
          } else {
            this.$message.error('预览失败：' + res.message)
            this.handleCancel()
          }
        })
      },
      handleCancel () {
        this.previewData = ''
        this.visible = false
      }
    }
  }
</script>
