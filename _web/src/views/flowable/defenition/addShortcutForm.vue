<template>
  <a-modal
    title="应用至申请入口"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item v-show="false">
          <a-input :disabled="true" v-decorator="['processDefinitionId']"/>
        </a-form-item>
        <a-form-item v-show="false">
          <a-input :disabled="true" v-decorator="['key']" />
        </a-form-item>
        <a-form-item
          label="入口名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入申请名称" v-decorator="['name', {rules: [{required: true, message: '请输入申请名称！'}]}]" />
        </a-form-item>
        <a-form-item v-show="false">
          <a-input :disabled="true" v-decorator="['category']" />
        </a-form-item>
        <a-form-item v-show="false">
          <a-input v-decorator="['categoryName']" />
        </a-form-item>
        <a-form-item v-show="false">
          <a-input :disabled="true" v-decorator="['version']" />
        </a-form-item>
        <a-form-item
          label="图标"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          <a-input placeholder="请选择图标" disabled="disabled" v-decorator="['icon', {rules: [{required: true, message: '请选择图标！'}]}]" >
            <a-icon slot="addonAfter" @click="openIconSele()" type="setting" />
          </a-input>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="排序"
        >
          <a-input-number placeholder="请输入排序" style="width: 100%" v-decorator="['sort',{rules: [{required: true, message: '请输入请输入排序！'}],initialValue: 100}]" :min="1" :max="1000" />
        </a-form-item>
        <a-form-item
          label="描述"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入描述" v-decorator="['description']"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
    <a-modal
      :width="900"
      :visible="visibleIcon"
      @cancel="handleCancelIcon"
      footer=""
      :mask="false"
      :closable="false"
      :destroyOnClose="true"
    >
      <icon-selector v-model="currentSelectedIcon" @change="handleIconChange"/>
    </a-modal>
  </a-modal>
</template>
<script>
  import { flowableShortcutAdd } from '@/api/modular/flowable/shortcutManage'
  import IconSelector from '@/components/IconSelector'
  export default {
    components: { IconSelector },
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
        form: this.$form.createForm(this),
        visibleIcon: false,
        // 图标组件
        currentSelectedIcon: ''
      }
    },
    methods: {
      // 初始化方法
      add (record) {
        this.visible = true
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              processDefinitionId: record.id,
              category: record.category,
              categoryName: record.categoryName,
              key: record.key,
              version: record.version
            }
          )
        }, 100)
      },
      /**
       * 选择图标
       */
      openIconSele () {
        this.visibleIcon = true
      },
      handleIconChange (icon) {
        this.currentSelectedIcon = icon
        this.form.getFieldDecorator('icon', { initialValue: icon })
        this.visibleIcon = false
      },
      handleCancelIcon () {
        this.visibleIcon = false
      },
      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            flowableShortcutAdd(values).then((res) => {
              this.confirmLoading = false
              if (res.success) {
                this.$message.success('添加应用成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('添加应用失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          } else {
            this.confirmLoading = false
          }
        })
      },
      handleCancel () {
        this.currentSelectedIcon = ''
        this.form.getFieldDecorator('icon', { initialValue: '' })
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
