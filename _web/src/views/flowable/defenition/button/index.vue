<template>
  <div>
    <div class="table-operator" v-if="hasPerm('flowableButton:add')">
      <a-button @click="handleAdd" v-if="hasPerm('flowableButton:add')" type="primary" icon="plus" >新增按钮</a-button>
    </div>
    <div v-if="hasPerm('flowableButton:list')">
      <a-table
        :columns="columns"
        :dataSource="loadData"
        :pagination="false"
        :loading="tableLoading"
        :rowKey="(record) => record.id"
      >
        <span slot="button_yn" slot-scope="text,record">
          <a-tag
            v-if="text!=null & text === 'Y'"
            :key="record.id"
            :color="'green'"
          >
            {{ textFilter(text) }}
          </a-tag>
          <span v-else>{{ textFilter(text) }}</span>
        </span>
        <span slot="action" slot-scope="text,record">
          <a @click="handleEdit(record)" v-if="hasPerm('flowableButton:edit')">编辑</a>
          <a-divider type="vertical" v-if="hasPerm('flowableButton:delete') & hasPerm('flowableButton:edit')"/>
          <a-popconfirm v-if="hasPerm('flowableButton:delete')" placement="topRight" title="确定删除？" @confirm="() => handleDel(record)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </a-table>
    </div>
    <div v-if="hasPerm('flowableButton:add')">
      <a-modal
        title="新增按钮"
        :width="900"
        :visible="visibleAdd"
        @ok="handAddSubmit"
        @cancel="handleCancelAdd"
      >
        <a-spin :spinning="addLoading">
          <a-form :form="addForm">
            <a-form-item v-show="false"><a-input v-decorator="['processDefinitionId']" /></a-form-item>
            <a-form-item
              label="活动节点"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-select placeholder="请选择活动节点" v-decorator="['actId', {rules: [{required: true, message: '请选择活动节点！'}]}]" @change="actSelect">
                <a-select-option v-for="(item,index) in UserTasks" :key="index" :value="item.id" >{{ item.name }}</a-select-option>
              </a-select>
            </a-form-item>
            <a-form-item v-show="false"><a-input v-decorator="['actName']" /></a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="按钮"
            >
              <div>
                <div :style="{ borderBottom: '1px solid #E9E9E9' }">
                  <a-checkbox :indeterminate="addIndeterminate" :checked="addCheckAll" @change="addOnCheckAllChange">
                    全选
                  </a-checkbox>
                </div>
                <a-checkbox-group v-model="addCheckedList" @change="addOnChange">
                  <a-row >
                    <a-col style="padding-top: 5px;padding-bottom: 5px" v-for="(item,index) in columnsButtonTitle" :key="index" :span="6">
                      <a-checkbox :checked="true" :value="item.dataIndex">{{ item.title }}</a-checkbox>
                    </a-col>
                  </a-row>
                </a-checkbox-group>
              </div>
            </a-form-item>
          </a-form>
        </a-spin>
      </a-modal>
    </div>
    <div v-if="hasPerm('flowableButton:edit')">
      <a-modal
        title="编辑选项"
        :width="900"
        :visible="visibleEdit"
        @ok="editHandSubmit"
        @cancel="handleCancelEdit"
      >
        <a-spin :spinning="editLoading">
          <a-form :form="editForm">
            <a-form-item v-show="false"><a-input v-decorator="['id']" /></a-form-item>
            <a-form-item v-show="false"><a-input v-decorator="['processDefinitionId']" /></a-form-item>
            <a-form-item
              label="活动节点"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-select :disabled="true" placeholder="请选择活动节点" v-decorator="['actId', {rules: [{required: true, message: '请选择活动节点！'}]}]" @change="actSelect">
                <a-select-option v-for="(item,index) in UserTasks" :key="index" :value="item.id" >{{ item.name }}</a-select-option>
              </a-select>
            </a-form-item>
            <a-form-item v-show="false"><a-input v-decorator="['actName']" /></a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="按钮"
            >
              <div>
                <div :style="{ borderBottom: '1px solid #E9E9E9' }">
                  <a-checkbox :indeterminate="addIndeterminate" :checked="addCheckAll" @change="addOnCheckAllChange">
                    全选
                  </a-checkbox>
                </div>
                <a-checkbox-group v-model="addCheckedList" @change="addOnChange">
                  <a-row >
                    <a-col style="padding-top: 5px;padding-bottom: 5px" v-for="(item,index) in columnsButtonTitle" :key="index" :span="6">
                      <a-checkbox :checked="true" :value="item.dataIndex">{{ item.title }}</a-checkbox>
                    </a-col>
                  </a-row>
                </a-checkbox-group>
              </div>
            </a-form-item>
          </a-form>
        </a-spin>
      </a-modal>
    </div>
  </div>
</template>

<script>
  import { buttonList, buttonAdd, buttonEdit, buttonDelete } from '@/api/modular/flowable/buttonManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import { flowableDefinitionUserTasks } from '@/api/modular/flowable/defenitionManage'
  /**
   * 全选变量设定
   */
  const addPlainOptions = []
  const defaultCheckedList = []
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
        tableLoading: false,
        visibleButton: {},
        actData: [],
        UserTasks: [],
        // 新增
        visibleAdd: false,
        addLoading: false,
        addForm: this.$form.createForm(this),
        // 新增多选按钮
        addCheckedList: defaultCheckedList,
        addIndeterminate: true,
        addCheckAll: false,
        addPlainOptions,
        // 编辑参数
        visibleEdit: false,
        editLoading: false,
        editForm: this.$form.createForm(this),
        // 查询参数
        queryParam: {},
        // 表头
        columns: [],
        columnsButtonTitle: [],
        loadData: [],
        textData: []
      }
    },
    methods: {
      /**
       * 其他界面打开此界面初始化方法
       */
      buttonIndex (button) {
        this.visibleButton = button
        this.queryParam.processDefinitionId = button.id
        this.getButtonList()
        this.addAction()
        this.getDictData()
        this.flowableDefinitionUserTasks()
      },
      /**
       * 初始化列表数据
       */
      addAction () {
        this.columns.push({ title: '节点名称', dataIndex: 'actName' })
        this.columnsButtonTitle.push(
          { title: '提交', dataIndex: 'submit', scopedSlots: { customRender: 'button_yn' } },
          { title: '保存', dataIndex: 'save', scopedSlots: { customRender: 'button_yn' } },
          { title: '退回', dataIndex: 'back', scopedSlots: { customRender: 'button_yn' } },
          { title: '转办', dataIndex: 'turn', scopedSlots: { customRender: 'button_yn' } },
          { title: '指定', dataIndex: 'next', scopedSlots: { customRender: 'button_yn' } },
          { title: '委托', dataIndex: 'entrust', scopedSlots: { customRender: 'button_yn' } },
          { title: '终止', dataIndex: 'end', scopedSlots: { customRender: 'button_yn' } },
          { title: '追踪', dataIndex: 'trace', scopedSlots: { customRender: 'button_yn' } },
          { title: '挂起', dataIndex: 'suspend', scopedSlots: { customRender: 'button_yn' } },
          { title: '跳转', dataIndex: 'jump', scopedSlots: { customRender: 'button_yn' } },
          { title: '加签', dataIndex: 'addSign', scopedSlots: { customRender: 'button_yn' } },
          { title: '减签', dataIndex: 'deleteSign', scopedSlots: { customRender: 'button_yn' } }
        )
        this.columnsButtonTitle.forEach(item => {
          this.columns.push(item)
          addPlainOptions.push(item.dataIndex)
        })
        if (this.hasPerm('flowableButton:edit') || this.hasPerm('flowableButton:delete')) {
          this.columns.push({
            title: '操作',
            width: '150px',
            dataIndex: 'action',
            scopedSlots: { customRender: 'action' }
          })
        }
      },
      /**
       * 获取列表数据
       */
      getButtonList () {
        this.tableLoading = true
        buttonList(this.queryParam).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.loadData = res.data
          } else {
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 获取是否字典数据
       */
      getDictData () {
        sysDictTypeDropDown({ code: 'yes_or_no' }).then((res) => {
          this.textData = res.data
        })
      },
      /**
       * 获取活动节点下拉框数据
       */
      flowableDefinitionUserTasks () {
        flowableDefinitionUserTasks({ id: this.visibleButton.id }).then((res) => {
          this.UserTasks = res.data
        })
      },
      /**
       * 翻译列表及表单是否
       */
      textFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.textData.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 关闭此整个界面
       */
      handleCancel () {
        this.loadData = []
        this.columns = []
        this.columnsButtonTitle = []
      },
      /**
       * 打开新增框
       */
      handleAdd () {
        this.visibleAdd = true
        setTimeout(() => {
          this.addForm.setFieldsValue({ processDefinitionId: this.visibleButton.id })
        }, 100)
      },
      /**
       * 关闭新增框
       */
      handleCancelAdd () {
        this.addCheckedList = []
        this.addForm.resetFields()
        this.visibleAdd = false
        this.addCheckAll = false
        this.addIndeterminate = false
      },
      /**
       * 新增提交
       */
      handAddSubmit () {
        const { addForm: { validateFields } } = this
        this.addLoading = true
        validateFields((errors, values) => {
          if (!errors) {
            addPlainOptions.forEach(item => {
              values[item] = 'N'
            })
            if (this.addCheckedList.length > 0) {
              this.addCheckedList.forEach(item => {
                values[item] = 'Y'
              })
            }
            buttonAdd(values).then((res) => {
              this.addLoading = false
              if (res.success) {
                this.$message.success('新增成功')
                this.getButtonList()
                this.handleCancelAdd()
              } else {
                this.$message.error('新增失败：' + res.message)
              }
            })
          } else {
            this.addLoading = false
          }
        })
      },
      /**
       * 打开编辑框
       */
      handleEdit (record) {
        this.visibleEdit = true
        setTimeout(() => {
          this.editForm.setFieldsValue(
            {
              id: record.id,
              processDefinitionId: record.processDefinitionId,
              actId: record.actId.toString(),
              actName: record.actName
            }
          )
        }, 100)
        addPlainOptions.forEach(item => {
          if (record[item] === 'Y') {
            this.addCheckedList.push(item)
          }
        })
        this.addIndeterminate = !!this.addCheckedList.length && this.addCheckedList.length < addPlainOptions.length
        this.addCheckAll = this.addCheckedList.length === addPlainOptions.length
      },
      /**
       * 关闭编辑框
       */
      handleCancelEdit () {
        this.addCheckAll = false
        this.addIndeterminate = false
        this.addCheckedList = []
        this.editForm.resetFields()
        this.visibleEdit = false
      },
      /**
       * 编辑提交
       */
      editHandSubmit () {
        const { editForm: { validateFields } } = this
        this.editLoading = true
        validateFields((errors, values) => {
          addPlainOptions.forEach(item => {
            values[item] = 'N'
          })
          if (this.addCheckedList.length > 0) {
            this.addCheckedList.forEach(item => {
              values[item] = 'Y'
            })
          }
          if (!errors) {
            buttonEdit(values).then((res) => {
              this.editLoading = false
              if (res.success) {
                this.$message.success('编辑成功')
                this.getButtonList()
                this.handleCancelEdit()
              } else {
                this.$message.error('编辑失败：' + res.message)
              }
            })
          } else {
            this.editLoading = false
          }
        })
      },
      /**
       * 下拉框选择活动节点增加选择活动节点名称
       */
      actSelect (code) {
        this.addForm.getFieldDecorator('actName', { initialValue: this.UserTasks.find(item => code === item.id).name })
      },
      /**
       * 多选框点击
       */
      addOnChange (checkedList) {
        this.addIndeterminate = !!checkedList.length && checkedList.length < addPlainOptions.length
        this.addCheckAll = checkedList.length === addPlainOptions.length
      },
      /**
       * 全选
       */
      addOnCheckAllChange (e) {
        Object.assign(this, {
          addCheckedList: e.target.checked ? this.columnsButtonTitle : [],
          addIndeterminate: false,
          addCheckAll: e.target.checked
        })
        const obj = JSON.parse(JSON.stringify(this.addCheckedList))
        if (this.addCheckedList.length > 0) {
          this.addCheckedList = []
          obj.forEach(item => {
            this.addCheckedList.push(item.dataIndex)
          })
        }
      },
      /**
       * 删除
       */
      handleDel (record) {
        this.tableLoading = true
        buttonDelete({ id: record.id }).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.$message.success('删除成功')
            this.getButtonList()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        })
      }
    }
  }
</script>
