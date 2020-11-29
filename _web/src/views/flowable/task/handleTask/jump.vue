<template>
  <a-modal
    title="跳转"
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
          label="跳转节点"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          <a-table
            size="middle"
            :columns="columns"
            :loading="tableLoading"
            :pagination="false"
            :dataSource="loadData"
            :rowKey="(record) => record.id"
            :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange ,type:'radio' }"
          />
        </a-form-item>
        <a-form-item
          label="跳转原因"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入跳转原因" v-decorator="['comment',{rules: [{required: true, message: '请输入跳转原因！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { handleTaskJump } from '@/api/modular/flowable/handleTaskManage'
  import { flowableDefinitionUserTasks } from '@/api/modular/flowable/defenitionManage'

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
        columns: [
          {
            title: '节点名称',
            dataIndex: 'name'
          }
        ],
        loadData: [],
        visible: false,
        confirmLoading: false,
        spinningLoading: false,
        tableLoading: false,
        selectedRowKeys: [],
        selectedRows: [],
        recordData: {},
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
        this.flowableDefinitionUserTasks()
      },
      flowableDefinitionUserTasks () {
        this.tableLoading = true
        flowableDefinitionUserTasks({ id: this.recordData.procIns.procDef.id }).then((res) => {
          this.tableLoading = false
          this.loadData = res.data
        })
      },
      /**
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        if (this.selectedRows.length < 1) {
          this.$message.warning('请选择跳转节点')
          return
        }
        validateFields((errors, values) => {
          if (!errors) {
            values.taskId = this.recordData.id
            values.targetActId = this.selectedRows[0].id
            values.targetActName = this.selectedRows[0].name
            this.confirmLoading = true
            handleTaskJump(values).then((res) => {
              if (res.success) {
                this.$message.success('跳转成功')
                this.returnPage()
              } else {
                this.$message.error('跳转失败：' + res.message)
              }
            }).finally((res) => {
              this.confirmLoading = false
            })
          }
        })
      },
      /**
       * 节点列表选择
       */
      onSelectChange (selectedRowKeys, selectedRows) {
        this.selectedRowKeys = selectedRowKeys
        this.selectedRows = selectedRows
      },
      /**
       * 返回并清空界面缓存
       */
      returnPage () {
        this.$emit('close')
        this.handleCancel()
      },
      /**
       * 关闭
       */
      handleCancel () {
        this.selectedRowKeys = []
        this.selectedRows = []
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
