<template>
  <a-modal
    title="编辑申请入口"
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
        <a-form-item v-show="false">
          <a-input v-decorator="['processDefinitionId']" />
        </a-form-item>
        <a-form-item
          label="入口名称"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-input placeholder="请输入申请入口名称" v-decorator="['name', {rules: [{required: true, message: '请输入申请入口名称！'}]}]" />
        </a-form-item>
        <a-form-item
          label="流程分类"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select placeholder="请选择流程分类" disabled="disabled" v-decorator="['category', {rules: [{required: true, message: '请选择流程分类！'}]}]" @change="categorySelect">
            <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item v-show="false">
          <a-input v-decorator="['categoryName']" />
        </a-form-item>
        <a-form-item v-show="false">
          <a-input v-decorator="['version']" />
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
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import { flowableShortcutEdit } from '@/api/modular/flowable/shortcutManage'
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
        flowableCategoryListData: [],
        visibleIcon: false,
        // 图标组件
        currentSelectedIcon: ''
      }
    },
    created () {
      this.flowableCategoryList()
    },
    methods: {
      // 初始化方法
      edit (record) {
        this.visible = true
        this.currentSelectedIcon = record.icon
        setTimeout(() => {
          this.form.setFieldsValue(
            {
              id: record.id,
              key: record.key,
              name: record.name,
              category: record.category,
              categoryName: record.categoryName,
              version: record.version,
              sort: record.sort,
              description: record.description,
              processDefinitionId: record.processDefinitionId
            }
          )
        }, 100)
        this.form.getFieldDecorator('icon', { initialValue: record.icon })
      },

      /**
       * 获取流程类型
       */
      flowableCategoryList () {
        flowableCategoryList().then((res) => {
          this.flowableCategoryListData = res.data
        })
      },

      /**
       * 分类下拉事件，初始化分类名称
       */
      categorySelect (value) {
        this.form.getFieldDecorator('categoryName', { initialValue: this.flowableCategoryListData.find(item => value === item.code).name })
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
            flowableShortcutEdit(values).then((res) => {
              this.confirmLoading = false
              if (res.success) {
                this.$message.success('编辑成功')
                this.$emit('ok', values)
                this.handleCancel()
              } else {
                this.$message.error('编辑失败：' + res.message)
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
