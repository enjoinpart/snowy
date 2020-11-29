<template>
  <a-modal
    title="委托"
    :width="600"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="spinningLoading">
      <a-form :form="form">
        <a-form-item
          label="当前节点"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          {{ this.recordData.name }}
        </a-form-item>
        <a-form-item
          label="委托人"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select show-search :filter-option="filterOption" v-decorator="['assignee', {rules: [{ required: true, message: '请选择委托人！' }]}]" placeholder="请选择委托人">
            <a-select-option v-for="(item,index) in userSelector" :key="index" :value="item.id" >{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="委托原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入委托原因" v-decorator="['comment',{rules: [{required: true, message: '请输入委托原因！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { handleTaskEntrust } from '@/api/modular/flowable/handleTaskManage'
  import { sysUserSelector } from '@/api/modular/system/userManage'
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
        spinningLoading: false,
        recordData: {},
        userSelector: [],
        form: this.$form.createForm(this)
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      open (record) {
        this.recordData = record
        this.visible = true
        this.sysUserSelector()
      },
      sysUserSelector () {
        sysUserSelector().then((res) => {
          this.userSelector = res.data
        })
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            values.taskId = this.recordData.id
            handleTaskEntrust(values).then((res) => {
              if (res.success) {
                this.$message.success('委托成功')
                this.returnPage()
              } else {
                this.$message.error('委托失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          } else {
            this.confirmLoading = false
          }
        })
      },
      /**
       * 返回并清空界面缓存
       */
      returnPage () {
        this.form.resetFields()
        this.visible = false
        this.$emit('close')
      },
      /**
       * 关闭
       */
      handleCancel () {
        this.form.resetFields()
        this.visible = false
      },
      filterOption (input, option) {
        return (
          option.componentOptions.children[0].text.toLowerCase().indexOf(input.toLowerCase()) >= 0
        )
      }
    }
  }
</script>
