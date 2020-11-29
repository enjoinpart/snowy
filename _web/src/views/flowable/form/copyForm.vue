<template>
  <a-modal
    title="复制表单"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item
          label="表单名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入表单名称" v-decorator="['name', {rules: [{required: true, message: '请输入表单名称！'}]}]" />
        </a-form-item>
        <a-form-item
          label="唯一编码"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入唯一编码" v-decorator="['code', {rules: [{required: true, message: '请输入唯一编码！'}]}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="表单分类"
          has-feedback
        >
          <a-select placeholder="请选择表单分类" v-decorator="['category', {rules: [{required: true, message: '请选择表单分类！'}]}]">
            <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="备注"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入备注" v-decorator="['remark']"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { formResourceAdd } from '@/api/modular/flowable/formResourceManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
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
        flowableCategoryListData: [],
        form: this.$form.createForm(this),
        recordData: {}
      }
    },
    methods: {
      // 初始化方法
      copy (record) {
        this.visible = true
        this.recordData = record
        this.flowableCategoryList()
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              name: record.name,
              code: record.code,
              category: record.category,
              remark: record.remark
            }
          )
        }, 100)
      },
      /**
       * 获取分类
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            values.formJson = this.recordData.formJson
            formResourceAdd(values).then((res) => {
              this.confirmLoading = false
              if (res.success) {
                this.$message.success('复制成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('复制失败：' + res.message)
              }
            }).finally(res => {
              this.confirmLoading = false
            })
          }
        })
      },
      handleCancel () {
        this.recordData = {}
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
