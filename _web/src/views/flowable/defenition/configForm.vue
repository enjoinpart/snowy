<template>
  <a-card
    :bordered="false"
  >
    <div class="table-operator">
      <a-button type="dashed" @click="returnPage" icon="rollback" >返回</a-button>
    </div>
    <a-spin :spinning="confirmLoading">
      <a-tabs defaultActiveKey="option" :activeKey="this.defOpen" @change="callback" >
        <a-tab-pane key="option" tab="选项" force-render>
          <option-index ref="optionIndex"/>
        </a-tab-pane>
        <a-tab-pane key="button" tab="按钮" force-render>
          <button-index ref="buttonIndex"/>
        </a-tab-pane>
        <a-tab-pane key="event" tab="事件" force-render>
          <event-index ref="eventIndex"/>
        </a-tab-pane>
        <a-tab-pane key="form" tab="表单" force-render>
          <form-index ref="formIndex"/>
        </a-tab-pane>
      </a-tabs>
    </a-spin>
  </a-card>
</template>

<script>
  import optionIndex from './option/index'
  import buttonIndex from './button/index'
  import eventIndex from './event/index'
  import formIndex from './form/index'

  export default {
    components: {
      optionIndex,
      buttonIndex,
      eventIndex,
      formIndex
    },
    data () {
      return {
        record: {},
        visible: false,
        confirmLoading: false,
        defOpen: 'option'
      }
    },
    methods: {
      // 初始化方法
      config (config) {
        this.record = config
        this.visible = true
        setTimeout(() => {
          // 默认加载option
          this.$refs.optionIndex.optionIndex(this.record.id)
        }, 100)
      },
      /**
       * 关闭打卡的卡片界面
       */
      returnPage () {
        this.$emit('closeConfig')
        this.handleCancel()
      },
      callback (key) {
        if (key === 'option') {
          this.$refs.optionIndex.optionIndex(this.record.id)
          this.$refs.buttonIndex.handleCancel()
          this.$refs.eventIndex.handleCancel()
          this.$refs.formIndex.handleCancel()
        }
        if (key === 'button') {
          this.$refs.buttonIndex.buttonIndex(this.record)
          this.$refs.optionIndex.handleCancel()
          this.$refs.eventIndex.handleCancel()
          this.$refs.formIndex.handleCancel()
        }
        if (key === 'event') {
          this.$refs.eventIndex.eventIndex(this.record)
          this.$refs.buttonIndex.handleCancel()
          this.$refs.optionIndex.handleCancel()
          this.$refs.formIndex.handleCancel()
        }
        if (key === 'form') {
          this.$refs.formIndex.formIndex(this.record)
          this.$refs.buttonIndex.handleCancel()
          this.$refs.optionIndex.handleCancel()
          this.$refs.eventIndex.handleCancel()
        }
        this.defOpen = key
      },
      /**
       * 清理此界面缓存
       */
      handleCancel () {
        // eslint-disable-next-line eqeqeq
        if (this.$refs.optionIndex != undefined) {
          this.$refs.optionIndex.handleCancel()
        }
        // eslint-disable-next-line eqeqeq
        if (this.$refs.buttonIndex != undefined) {
          this.$refs.buttonIndex.handleCancel()
        }
        // eslint-disable-next-line eqeqeq
        if (this.$refs.eventIndex != undefined) {
          this.$refs.eventIndex.handleCancel()
        }
        // eslint-disable-next-line eqeqeq
        if (this.$refs.formIndex != undefined) {
          this.$refs.formIndex.handleCancel()
        }
        this.visible = false
        this.defOpen = 'option'
      }
    }
  }
</script>
