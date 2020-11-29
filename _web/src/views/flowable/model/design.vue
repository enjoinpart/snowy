<template>
  <a-modal
    title="模型设计"
    :width="1200"
    :visible="visible"
    :confirmLoading="confirmLoading"
    :footer="null"
    @cancel="handleClose"
  >
    <div id="wrap" ref="wrap">
      <iframe id="iframe" height="580px" :src="srcUrl" style="width:100%;overflow:hidden;" frameBorder="0">
      </iframe>
    </div>
  </a-modal>
</template>
<script>
  import Vue from 'vue'
  import { ACCESS_TOKEN } from '@/store/mutation-types'
  export default {
    data () {
      return {
        visible: false,
        confirmLoading: false,
        dataRecord: [],
        srcUrl: ''
      }
    },
    methods: {
      // 初始化方法
      design (record) {
        this.dataRecord = record
        this.visible = true
        this.srcUrl = process.env.VUE_APP_API_BASE_URL + '/designer/index.html?token=' + Vue.ls.get(ACCESS_TOKEN) + '&modelId=' + record.modelId
      },
      /**
       * 关闭
       */
      handleClose () {
        this.visible = false
        this.srcUrl = ''
      }
    }
  }
</script>
