<template>
  <a-modal
    title="转办"
    :width="900"
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
          label="转办用户"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select
            mode="multiple"
            style="width: 100%"
            placeholder="请选择用户"
            @change="handleChangeUser"
          >
            <a-select-option v-for="(item,index) in userList" :key="index" :value="item.id">{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="转办角色"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select
            mode="multiple"
            style="width: 100%"
            placeholder="请选择角色"
            @change="handleChangeRole"
          >
            <a-select-option v-for="(item,index) in roleList" :key="index" :value="item.id">{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="转办原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入转办原因" v-decorator="['comment',{rules: [{required: true, message: '请输入转办原因！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { handleTaskTurn } from '@/api/modular/flowable/handleTaskManage'
  import { sysUserSelector } from '@/api/modular/system/userManage'
  import { sysRoleDropDown } from '@/api/modular/system/roleManage'
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
        roleList: [],
        userChangList: [],
        roleChangList: [],
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
        this.getUserRoleList()
      },
      getUserRoleList () {
        sysUserSelector().then((res) => {
          this.userList = res.data
        })
        sysRoleDropDown().then((res) => {
          this.roleList = res.data
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
            values.assigneeList = []
            if (this.userChangList.length > 0) {
              this.userChangList.forEach(item => {
                values.assigneeList.push(item)
              })
            }
            if (this.roleChangList.length > 0) {
              this.roleChangList.forEach(item => {
                values.assigneeList.push(item)
              })
            }
            if (values.assigneeList.length < 1) {
              this.$message.warning('请选择转办用户或角色')
              return
            }
            this.confirmLoading = true
            handleTaskTurn(values).then((res) => {
              if (res.success) {
                this.$message.success('转办成功')
                this.returnPage()
              } else {
                this.$message.error('转办失败：' + res.message)
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
        this.visible = false
        this.form.resetFields()
        this.$emit('close')
      },
      /**
       * 关闭
       */
      handleCancel () {
        this.visible = false
      },

      handleChangeUser (value) {
        this.userChangList = value
      },
      handleChangeRole (value) {
        this.roleChangList = value
      }
    }
  }
</script>
