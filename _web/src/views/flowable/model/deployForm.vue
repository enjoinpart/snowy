<template>
  <a-modal
    title="部署模型"
    :width="600"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item
          label="模型名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          {{ this.recordData.name }}
        </a-form-item>
        <a-form-item
          label="模型分类"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select placeholder="请选择模型分类" v-decorator="['category', {rules: [{required: true, message: '请选择模型分类！'}]}]">
            <a-select-option v-for="(item,index) in categoryList" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { flowableCategoryDeploy } from '@/api/modular/flowable/defenitionManage'
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
        record: {},
        categoryList: [],
        recordData: {},
        form: this.$form.createForm(this)
      }
    },
    created () {
      /**
       * 获取到分类列表
       */
      flowableCategoryList().then((res) => {
        this.categoryList = res.data
      })
    },
    methods: {
      // 初始化方法
      deploy (record) {
        this.recordData = record
        this.visible = true
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            values.modelId = this.recordData.modelId
            flowableCategoryDeploy(values).then((res) => {
              if (res.success) {
                this.$message.success('部署成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('部署失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            // eslint-disable-next-line handle-callback-err
            }).catch((err) => {
              // 这里咱先啥也不干
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
