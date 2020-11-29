<template>
  <a-modal
    title="退回"
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
          label="退回环节"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
        >
          <a-table
            size="middle"
            :columns="columns"
            :pagination="false"
            :dataSource="loadData"
            :rowKey="(record) => record.keys"
            :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange ,type:'radio' }"
          />
        </a-form-item>
        <a-form-item
          label="退回意见"
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          has-feedback
        >
          <a-textarea :rows="4" placeholder="请输入退回意见" v-decorator="['comment',{rules: [{required: true, message: '请输入退回意见！'}]}]"></a-textarea>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>
<script>
  import { handleTaskBack } from '@/api/modular/flowable/handleTaskManage'
  import { flowableInstanceHisUserTasks } from '@/api/modular/flowable/instanceManage'
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
            title: '环节名称',
            dataIndex: 'name'
          },
          {
            title: '操作人',
            dataIndex: 'assigneeName'
          }
        ],
        visible: false,
        confirmLoading: false,
        spinningLoading: false,
        tableLoading: false,
        recordData: {},
        form: this.$form.createForm(this),
        loadData: [],
        selectedRowKeys: []
      }
    },
    methods: {
      /**
       * 初始化方法
       */
      open (record) {
        this.recordData = record
        this.visible = true
        this.flowableInstanceHisUserTasks()
      },
      /**
       * 获取节点列表
       */
      flowableInstanceHisUserTasks () {
        this.spinningLoading = true
        flowableInstanceHisUserTasks({ id: this.recordData.procIns.id }).then((res) => {
          this.spinningLoading = false
          if (res.data.length > 0) {
            let index = 1
            res.data.forEach(item => {
              item.keys = index++
              this.loadData.push(item)
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
       * 提交
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        if (this.selectedRowKeys.length < 1) {
          this.$message.warning('请选择退回节点')
          return
        }
        validateFields((errors, values) => {
          if (!errors) {
            this.confirmLoading = true
            values.taskId = this.recordData.id
            values.targetActId = this.selectedRows[0].id
            // eslint-disable-next-line eqeqeq
            values.targetActName = this.loadData.filter(item => item.keys == this.selectedRowKeys[0])[0].name
            handleTaskBack(values).then((res) => {
              if (res.success) {
                this.$message.success('退回成功')
                this.returnPage()
              } else {
                this.$message.error('退回失败：' + res.message)
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
        this.loadData = []
        this.form.resetFields()
        this.visible = false
      }
    }
  }
</script>
