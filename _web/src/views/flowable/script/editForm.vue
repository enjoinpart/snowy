<template>
  <a-modal
    title="编辑脚本"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item v-show="false">
          <a-input v-decorator="['id']" />
        </a-form-item>
        <a-form-item
          label="名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入名称" v-decorator="['name', {rules: [{required: true, message: '请输入名称！'}]}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="类别"
          has-feedback
        >
          <a-select style="width: 100%" placeholder="请选择类别" v-decorator="['type', {rules: [{ required: true, message: '请选择类别！' }]}]" >
            <a-select-option v-for="(item,index) in typeData" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="语言"
          has-feedback
        >
          <a-select style="width: 100%" placeholder="请选择语言" v-decorator="['lang', {rules: [{ required: true, message: '请选择语言！' }]}]" >
            <a-select-option v-for="(item,index) in langData" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="脚本内容"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="6" placeholder="请输入脚本内容" v-decorator="['content', {rules: [{required: true, message: '请输入脚本内容！'}]}]"></a-textarea>
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
  import { flowableScriptEdit } from '@/api/modular/flowable/scriptManage'
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
        typeData: [],
        langData: [],
        form: this.$form.createForm(this)
      }
    },
    methods: {
      // 初始化方法
      edit (record) {
        this.visible = true
        this.getTypeData()
        this.getLangData()
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              id: record.id,
              name: record.name,
              type: record.type.toString(),
              lang: record.lang.toString(),
              content: record.content,
              remark: record.remark
            }
          )
        }, 100)
      },

      /**
       * 获取类型下拉框数据
       */
      getTypeData () {
        sysDictTypeDropDown({ code: 'script_type' }).then((res) => {
          this.typeData = res.data
        })
      },

      /**
       * 获取语言下拉框数据
       */
      getLangData () {
        sysDictTypeDropDown({ code: 'script_language_type' }).then((res) => {
          this.langData = res.data
        })
      },

      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            flowableScriptEdit(values).then((res) => {
              this.confirmLoading = false
              if (res.success) {
                this.$message.success('编辑成功')
                this.visible = false
                this.$emit('ok', values)
                this.form.resetFields()
              } else {
                this.$message.error('编辑失败：' + res.message)
              }
            })
          } else {
            this.confirmLoading = false
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
