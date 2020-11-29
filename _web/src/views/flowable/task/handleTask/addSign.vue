<template>
  <a-modal
    title="加签"
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
          label="加签用户"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select
            mode="multiple"
            style="width: 100%"
            placeholder="请选择加签用户"
            v-decorator="['assigneeList',{rules: [{required: true, message: '请选择加签用户！'}]}]"
            has-feedback
          >
            <a-select-option v-for="(item,index) in userList" :key="index" :value="item.id">{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="加签原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入加签原因" v-decorator="['comment',{rules: [{required: true, message: '请输入加签原因！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { handleTaskAddSign } from '@/api/modular/flowable/handleTaskManage'
  import { flowableInstanceAddSignUserSelector } from '@/api/modular/flowable/instanceManage'
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
        userList: [],
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
        this.getAddSignUserSelector()
      },
      /**
       * 获取加签人员
       */
      getAddSignUserSelector () {
        const params = {
          id: this.recordData.procIns.id
        }
        flowableInstanceAddSignUserSelector(params).then((res) => {
          this.userList = res.data
        })
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            values.taskId = this.recordData.id
            this.confirmLoading = true
            handleTaskAddSign(values).then((res) => {
              if (res.success) {
                this.$message.success('加签成功')
                this.returnPage()
              } else {
                this.$message.error(res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          }
        })
      },
      /**
       * 返回并清空界面缓存
       */
      returnPage () {
        this.handleCancel()
        this.$emit('close')
      },
      /**
       * 关闭
       */
      handleCancel () {
        this.recordData = {}
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
