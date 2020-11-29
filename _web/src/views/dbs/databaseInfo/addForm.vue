<template>
  <a-modal
    title="新增数据源"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item
          label="数据库名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入数据库名称" v-decorator="['dbName', {rules: [{required: true, message: '请输入数据库名称！'}]}]" />
        </a-form-item>
        <a-form-item
          label="JDBC驱动类型"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select style="width: 100%" placeholder="请选择JDBC驱动类型" v-decorator="['jdbcDriver', {rules: [{ required: true, message: '请选择JDBC驱动类型！' }]}]" >
            <a-select-option v-for="(item,index) in jdbcDriverList" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="JDBC的URL"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入JDBC的URL" v-decorator="['jdbcUrl', {rules: [{required: true, message: '请输入JDBC的URL！'}]}]"/>
        </a-form-item>
        <a-form-item
          label="数据库账号"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入数据库账号" v-decorator="['userName', {rules: [{required: true, message: '请输入数据库账号！'}]}]" />
        </a-form-item>
        <a-form-item
          label="数据库密码"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入数据库密码" v-decorator="['password', {rules: [{required: true, message: '请输入数据库密码！'}]}]" />
        </a-form-item>
        <a-form-item
          label="备注"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入备注" v-decorator="['remarks']"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { databaseInfoAdd } from '@/api/modular/dbs/databaseInfoManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
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
        jdbcDriverList: [],
        form: this.$form.createForm(this)
      }
    },
    methods: {
      // 初始化方法
      add () {
        this.visible = true
        this.sysDictTypeDropDown()
      },
      sysDictTypeDropDown () {
        sysDictTypeDropDown({ code: 'jdbc_driver' }).then((res) => {
          this.jdbcDriverList = res.data
        })
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            databaseInfoAdd(values).then((res) => {
              if (res.success) {
                this.$message.success('新增成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('新增失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          }
        })
      },
      handleCancel () {
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
