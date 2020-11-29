<template>
  <div>
    <div class="table-operator" v-if="hasPerm('flowableEvent:add')">
      <a-button @click="handleAdd" v-if="hasPerm('flowableEvent:add')" type="primary" icon="plus" >新增事件</a-button>
    </div>
    <div v-if="hasPerm('flowableEvent:list')">
      <a-table
        :columns="columns"
        :dataSource="loadData"
        :pagination="false"
        :loading="tableLoading"
        :rowKey="(record) => record.id"
      >
        <span slot="type" slot-scope="text,record">
          <a-tag
            v-if="text!=null"
            :key="record.id"
            :color="'green'"
          >
            {{ typeFilter(text) }}
          </a-tag>
        </span>
        <span slot="nodeType" slot-scope="text,record">
          <a-tag
            v-if="text!=null"
            :key="record.id"
            :color="'geekblue'"
          >
            {{ nodeTypeFilter(text) }}
          </a-tag>
        </span>
        <span slot="action" slot-scope="text,record">
          <a @click="handleDetail(record)" v-if="hasPerm('flowableEvent:detail')">查看</a>
          <a-divider type="vertical" v-if="hasPerm('flowableEvent:detail') & hasPerm('flowableEvent:edit')"/>
          <a @click="handleEdit(record)" v-if="hasPerm('flowableEvent:edit')">编辑</a>
          <a-divider type="vertical" v-if="hasPerm('flowableEvent:delete') & hasPerm('flowableEvent:edit')"/>
          <a-popconfirm v-if="hasPerm('flowableEvent:delete')" placement="topRight" title="确定删除？" @confirm="() => handleDelete(record)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </a-table>
    </div>
    <div v-if="hasPerm('flowableEvent:detail')">
      <a-modal
        title="事件详情"
        :width="900"
        :visible="visibleDetail"
        :footer="null"
        @cancel="handleCancelDetail"
      >
        <a-spin :spinning="Loading">
          <a-form :form="detailForm">
            <a-form-item
              label="事件名称"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              {{ Detail.name }}
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件节点类型"
            >
              <a-tag
                :color="'geekblue'"
              >
                {{ nodeTypeFilter(Detail.nodeType) }}
              </a-tag>
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="节点名称"
            >
              {{ Detail.actName }}
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件类型"
            >
              <a-tag
                :color="'green'"
              >
                {{ typeFilter(Detail.type) }}
              </a-tag>
            </a-form-item>
            <a-form-item
              label="脚本"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-textarea :rows="6" v-decorator="['script']"></a-textarea>
            </a-form-item>
            <a-form-item
              label="执行顺序"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              {{ Detail.execSort }}
            </a-form-item>
            <a-form-item
              label="备注"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              {{ Detail.remark }}
            </a-form-item>
          </a-form>
        </a-spin>
      </a-modal>
    </div>
    <div v-if="hasPerm('flowableEvent:edit')">
      <a-modal
        title="编辑事件"
        :width="900"
        :visible="visibleEdit"
        @ok="handSubmitEdit"
        @cancel="handleCancelEdit"
      >
        <a-spin :spinning="Loading">
          <a-form :form="editForm">
            <a-form-item v-show="false"><a-input v-decorator="['id']" /></a-form-item>
            <a-form-item v-show="false"><a-input v-decorator="['processDefinitionId']" /></a-form-item>
            <a-form-item
              label="事件名称"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-input placeholder="请输入事件名称" v-decorator="['name', {rules: [{required: true, message: '请输入事件名称！'}]}]" />
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件节点类型"
            >
              <a-radio-group v-decorator="['nodeType',{rules: [{ required: true, message: '请选择事件节点类型！' }]}]" >
                <a-radio v-for="(item,index) in nodeTypeData" :key="index" :value="item.code" @click="nodeTypeClick(item.code,'edit')">{{ item.value }}</a-radio>
              </a-radio-group>
            </a-form-item>
            <a-form-item
              v-show="actIdShow"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="活动节点"
            >
              <a-select placeholder="请选择活动节点" v-decorator="['actId', {rules: [{required: actIdRequired, message: '请选择活动节点！'}]}]">
                <a-select-option v-for="(item,index) in actData" :key="index" :value="item.id" @click="actIdSelectCange(item.id,'edit')">{{ item.name }}</a-select-option>
              </a-select>
              <a-form-item v-show="false"><a-input v-decorator="['actName']" /></a-form-item>
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件类型"
            >
              <a-select placeholder="请选择事件类型" v-decorator="['type', {rules: [{required: true, message: '请选择事件类型！'}]}]">
                <a-select-option v-for="(item,index) in typeData" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
              </a-select>
            </a-form-item>
            <a-form-item
              label="脚本"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-row :gutter="24">
                <a-col :md="12" :sm="24">
                  选择已有脚本或下方填写新脚本
                </a-col>
                <a-col :md="12" :sm="24">
                  <a-select placeholder="选择已有脚本">
                    <a-select-option v-for="(item,index) in scriptData" :key="index" :value="item.id" @click="scriptSeleClick(item.id,'edit')">{{ item.name }}</a-select-option>
                  </a-select>
                </a-col>
              </a-row>
              <a-textarea :rows="6" placeholder="请输入脚本内容" v-decorator="['script', {rules: [{required: true, message: '请输入脚本内容！'}]}]"></a-textarea>
            </a-form-item>
            <a-form-item
              label="执行顺序"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-input-number style="width: 100%" v-decorator="['execSort', { initialValue: 100 }]" :min="1" :max="1000" />
            </a-form-item>
            <a-form-item
              label="备注"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-textarea :rows="4" placeholder="请输入备注" v-decorator="['remark']"/>
            </a-form-item>
          </a-form>
        </a-spin>
      </a-modal>
    </div>
    <div v-if="hasPerm('flowableEvent:add')">
      <a-modal
        title="新增事件"
        :width="900"
        :visible="visibleAdd"
        @ok="handSubmitAdd"
        @cancel="handleCancelAdd"
      >
        <a-spin :spinning="Loading">
          <a-form :form="addForm">
            <a-form-item v-show="false"><a-input v-decorator="['processDefinitionId']" /></a-form-item>
            <a-form-item
              label="事件名称"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-input placeholder="请输入事件名称" v-decorator="['name', {rules: [{required: true, message: '请输入事件名称！'}]}]" />
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件节点类型"
            >
              <a-radio-group v-decorator="['nodeType',{rules: [{ required: true, message: '请选择事件节点类型！' }]}]" >
                <a-radio v-for="(item,index) in nodeTypeData" :key="index" :value="item.code" @click="nodeTypeClick(item.code,'add')">{{ item.value }}</a-radio>
              </a-radio-group>
            </a-form-item>
            <a-form-item
              v-show="actIdShow"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="活动节点"
            >
              <a-select placeholder="请选择活动节点" v-decorator="['actId', {rules: [{required: actIdRequired, message: '请选择活动节点！'}]}]">
                <a-select-option v-for="(item,index) in actData" :key="index" :value="item.id" @click="actIdSelectCange(item.id,'add')">{{ item.name }}</a-select-option>
              </a-select>
              <a-form-item v-show="false"><a-input v-decorator="['actName']" /></a-form-item>
            </a-form-item>
            <a-form-item
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
              label="事件类型"
            >
              <a-select placeholder="请选择事件类型" v-decorator="['type', {rules: [{required: true, message: '请选择事件类型！'}]}]">
                <a-select-option v-for="(item,index) in typeData" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
              </a-select>
            </a-form-item>
            <a-form-item
              label="脚本"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-row :gutter="24">
                <a-col :md="12" :sm="24">
                  选择已有脚本或下方填写新脚本
                </a-col>
                <a-col :md="12" :sm="24">
                  <a-select placeholder="选择已有脚本" >
                    <a-select-option v-for="(item,index) in scriptData" :key="index" :value="item.id" @click="scriptSeleClick(item.id,'add')">{{ item.name }}</a-select-option>
                  </a-select>
                </a-col>
              </a-row>
              <a-textarea :rows="6" placeholder="请输入脚本内容" v-decorator="['script', {rules: [{required: true, message: '请输入脚本内容！'}]}]"></a-textarea>
            </a-form-item>
            <a-form-item
              label="执行顺序"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-input-number style="width: 100%" v-decorator="['execSort', { initialValue: 100 }]" :min="1" :max="1000" />
            </a-form-item>
            <a-form-item
              label="备注"
              :labelCol="labelCol"
              :wrapperCol="wrapperCol"
            >
              <a-textarea :rows="4" placeholder="请输入备注" v-decorator="['remark']"/>
            </a-form-item>
          </a-form>
        </a-spin>
      </a-modal>
    </div>
  </div>
</template>

<script>
  import { eventList, eventEdit, eventAdd, eventDelete } from '@/api/modular/flowable/eventManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import { flowableDefinitionUserTasks } from '@/api/modular/flowable/defenitionManage'
  import { flowableScriptList } from '@/api/modular/flowable/scriptManage'

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
        Loading: false,
        columns: [],
        loadData: [],
        // 详情参数
        visibleDetail: false,
        detailForm: this.$form.createForm(this),
        Detail: [],
        // 编辑参数
        visibleEdit: false,
        editForm: this.$form.createForm(this),
        // 新增参数
        visibleAdd: false,
        addForm: this.$form.createForm(this),
        // 查询参数
        queryParam: {},
        // 公用
        nodeTypeData: [],
        typeData: [],
        recordData: [],
        actIdShow: false,
        actIdRequired: false,
        actData: [],
        scriptData: []
      }
    },
    methods: {
      /**
       * 打开页面初始化
       */
      eventIndex (event) {
        this.recordData = event
        this.queryParam.processDefinitionId = event.id
        this.getEventList()
        this.addAction()
        this.getDictData()
      },
      /**
       * 初始化table信息
       */
      addAction () {
        this.columns.push(
          {
            title: '事件名称',
            dataIndex: 'name'
          },
          {
            title: '事件节点类型',
            dataIndex: 'nodeType',
            scopedSlots: { customRender: 'nodeType' }
          },
          {
            title: '事件类型',
            dataIndex: 'type',
            scopedSlots: { customRender: 'type' }
          },
          {
            title: '执行顺序',
            dataIndex: 'execSort'
          },
          {
            title: '备注',
            dataIndex: 'remark'
          }
        )
        if (this.hasPerm('flowableEvent:detail') || this.hasPerm('flowableEvent:edit') || this.hasPerm('flowableEvent:delete')) {
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
      getEventList () {
        this.tableLoading = true
        eventList(this.queryParam).then((res) => {
          this.tableLoading = false
          if (res.success) {
            this.loadData = res.data
          } else {
            this.$message.error(res.message)
          }
        })
      },
      /**
       * 获取字典参数
       */
      getDictData () {
        sysDictTypeDropDown({ code: 'event_node_type' }).then((res) => {
          this.nodeTypeData = res.data
        })
        sysDictTypeDropDown({ code: 'event_type' }).then((res) => {
          this.typeData = res.data
        })
      },
      /**
       * 事件节点类型翻译
       */
      nodeTypeFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.nodeTypeData.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 事件类型翻译
       */
      typeFilter (text) {
        // eslint-disable-next-line eqeqeq
        const values = this.typeData.filter(item => item.code == text)
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 关闭整个页面
       */
      handleCancel () {
        this.loadData = []
        this.columns = []
      },
      /**
       * 打开详情界面
       */
      handleDetail (detail) {
        this.Detail = detail
        this.visibleDetail = true
        setTimeout(() => {
          this.detailForm.setFieldsValue(
            {
              script: detail.script
            }
          )
        }, 100)
      },
      /**
       * 关闭详情界面
       */
      handleCancelDetail () {
        this.visibleDetail = false
      },
      /**
       * 打开编辑界面
       */
      handleEdit (record) {
        this.visibleEdit = true
        this.flowableScriptList()
        setTimeout(() => {
          this.editForm.setFieldsValue(
            {
              id: record.id,
              processDefinitionId: record.processDefinitionId,
              name: record.name,
              nodeType: record.nodeType.toString(),
              type: record.type,
              script: record.script,
              execSort: record.execSort,
              remark: record.remark
            }
          )
        }, 100)
        if (record.nodeType.toString() === '2') {
          setTimeout(() => {
          this.editForm.setFieldsValue(
            {
              actId: record.actId,
              actName: record.actName
            }
          )
          }, 100)
        }
        this.nodeTypeClick(record.nodeType.toString(), 'edit')
      },
      /**
       * 关闭编辑界面
       */
      handleCancelEdit () {
        this.editForm.resetFields()
        this.visibleEdit = false
        this.actIdShow = false
        this.actIdRequired = false
      },
      /**
       * 编辑提交
       */
      handSubmitEdit () {
        const { editForm: { validateFields } } = this
        this.Loading = true
        validateFields((errors, values) => {
          if (!errors) {
            eventEdit(values).then((res) => {
              this.Loading = false
              if (res.success) {
                this.$message.success('编辑成功')
                this.getEventList()
                this.handleCancelEdit()
              } else {
                this.$message.error('编辑失败：' + res.message)
              }
            })
          } else {
            this.Loading = false
          }
        })
      },
      /**
       * 打开新增界面
       */
      handleAdd () {
        this.visibleAdd = true
        this.flowableScriptList()
        setTimeout(() => {
          this.addForm.setFieldsValue({ processDefinitionId: this.recordData.id })
        }, 100)
      },
      /**
       * 关闭新增界面
       */
      handleCancelAdd () {
        this.addForm.resetFields()
        this.visibleAdd = false
      },
      /**
       * 新增提交
       */
      handSubmitAdd () {
        const { addForm: { validateFields } } = this
        this.Loading = true
        validateFields((errors, values) => {
          if (!errors) {
            eventAdd(values).then((res) => {
              this.Loading = false
              if (res.success) {
                this.$message.success('新增成功')
                this.getEventList()
                this.handleCancelAdd()
              } else {
                this.$message.error('新增失败：' + res.message)
              }
            })
          } else {
            this.Loading = false
          }
        })
      },
      /**
       * 删除
       */
      handleDelete (record) {
        this.Loading = true
        eventDelete({ id: record.id }).then((res) => {
          this.Loading = false
          if (res.success) {
            this.$message.success('删除成功')
            this.getEventList()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        })
      },
      /**
       * 事件节点单选框事件 , 编辑初始化选择框事件
       */
      nodeTypeClick (code, type) {
         if (code === '2') {
           this.flowableDefinitionUserTasks()
           this.actIdShow = true
           this.actIdRequired = true
         } else {
           this.actIdShow = false
           this.actIdRequired = false
           if (type === 'add') {
             setTimeout(() => {
               this.addForm.setFieldsValue(
                 {
                   actId: '',
                   actName: ''
                 }
               )
             }, 100)
           }
           if (type === 'edit') {
             setTimeout(() => {
               this.editForm.setFieldsValue(
                 {
                   actId: '',
                   actName: ''
                 }
               )
             }, 100)
           }
         }
      },
      /**
       * 获取活动节点下拉框数据
       */
      flowableDefinitionUserTasks () {
        this.Loading = true
        flowableDefinitionUserTasks({ id: this.recordData.id }).then((res) => {
          this.Loading = false
          this.actData = res.data
        })
      },
      /**
       * 活动节点下拉框事件
       */
      actIdSelectCange (id, type) {
        if (type === 'add') {
          this.addForm.setFieldsValue(
            {
              actName: this.actData.find(item => id === item.id).name
            }
          )
        }
        if (type === 'edit') {
          this.editForm.setFieldsValue(
            {
              actName: this.actData.find(item => id === item.id).name
            }
          )
        }
      },
      /**
       * 获取待选脚本列表
       */
      flowableScriptList () {
        flowableScriptList().then((res) => {
          this.scriptData = res.data
        })
      },
      /**
       * 脚本下拉框事件
       */
      scriptSeleClick (id, type) {
        if (type === 'add') {
          this.addForm.setFieldsValue(
            {
              script: this.scriptData.find(item => id === item.id).content
            }
          )
        }
        if (type === 'edit') {
          this.editForm.setFieldsValue(
            {
              script: this.scriptData.find(item => id === item.id).content
            }
          )
        }
      }
    }
  }
</script>
