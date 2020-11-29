<template>
  <a-modal
    title="编辑表单"
    :width="900"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item v-show="false"><a-input v-decorator="['id']" /></a-form-item>
        <a-form-item v-show="false"><a-input v-decorator="['processDefinitionId']" /></a-form-item>
        <a-form-item
          label="选择表单"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-select v-decorator="['formId',{rules: [{ required: true, message: '请选择表单！' }]}]">
            <a-select-option v-for="(item,index) in formListData" :key="index" :value="item.id">{{ item.name }}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item
          label="节点类型"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          <a-radio-group v-decorator="['nodeType',{rules: [{ required: true, message: '请选择表单节点类型！' }]}]" @change="nodeTypeChange">
            <a-radio v-for="(item,index) in nodeTypeData" :key="index" :value="item.code">{{ item.value }}</a-radio>
          </a-radio-group>
        </a-form-item>
        <a-form-item
          v-show="actIdShow"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="活动节点"
        >
          <a-select placeholder="请选择活动节点" v-decorator="['actId', {rules: [{required: actIdRequired, message: '请选择活动节点！'}]}]" @change="actIdSelectCange">
            <a-select-option v-for="(item,index) in actData" :key="index" :value="item.id">{{ item.name }}</a-select-option>
          </a-select>
          <a-form-item v-show="false"><a-input v-decorator="['actName']" /></a-form-item>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { formResourceList } from '@/api/modular/flowable/formResourceManage'
  import { flowableDefinitionUserTasks } from '@/api/modular/flowable/defenitionManage'
  import { formEdit } from '@/api/modular/flowable/formManage'
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
        form: this.$form.createForm(this),
        formListData: [],
        recordData: [],
        nodeTypeData: [],
        actData: [],
        actIdShow: false,
        actIdRequired: false
      }
    },
    methods: {
      /**
       * 打开界面初始化
       */
      edit (record, nodeType) {
        this.recordData = record
        this.nodeTypeData = nodeType
        this.visible = true
        this.formResourceList()
        this.flowableDefinitionUserTasks()
        setTimeout(() => {
          this.form.setFieldsValue({
            id: record.id,
            processDefinitionId: record.processDefinitionId,
            formId: record.formId,
            nodeType: record.nodeType.toString(),
            actId: record.actId,
            actName: record.actName
          })
        }, 100)
        if (record.nodeType.toString() === '3') {
          this.actIdShow = true
          this.actIdRequired = true
        }
      },
      /**
       * 获取表单列表
       */
      formResourceList () {
        formResourceList().then((res) => {
          this.formListData = res.data
        })
      },
      /**
       * 表单节点类型
       */
      nodeTypeChange (item) {
        if (item.target.value === '3') {
          this.actIdShow = true
          this.actIdRequired = true
        } else {
          this.actIdShow = false
          this.actIdRequired = false
          setTimeout(() => {
            this.form.setFieldsValue(
              {
                actId: '',
                actName: ''
              }
            )
          }, 100)
        }
      },
      /**
       * 获取活动节点下拉框数据
       */
      flowableDefinitionUserTasks () {
        this.confirmLoading = true
        flowableDefinitionUserTasks({ id: this.recordData.processDefinitionId }).then((res) => {
          this.confirmLoading = false
          this.actData = res.data
        })
      },
      /**
       * 活动节点选择事件
       */
      actIdSelectCange (id) {
        this.form.setFieldsValue({ actName: this.actData.find(item => id === item.id).name })
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        this.confirmLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            formEdit(values).then((res) => {
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
        this.actIdShow = false
        this.actIdRequired = false
      }
    }
  }
</script>
