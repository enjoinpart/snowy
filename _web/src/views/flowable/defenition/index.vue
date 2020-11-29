<template>
  <div>
    <a-card :bordered="false" v-show="indexPageShow">
      <a-spin :spinning="cardLoading">
        <div class="table-page-search-wrapper" v-if="hasPerm('flowableDefinition:page')">
          <a-form layout="inline">
            <a-row :gutter="48">
              <a-col :md="8" :sm="24">
                <a-form-item label="定义KEY">
                  <a-input v-model="queryParam.key" allow-clear placeholder="请输入定义KEY"/>
                </a-form-item>
              </a-col>
              <a-col :md="8" :sm="24">
                <a-form-item label="定义名称">
                  <a-input v-model="queryParam.code" allow-clear placeholder="请输入定义名称"/>
                </a-form-item>
              </a-col>
              <template v-if="advanced">
                <a-col :md="8" :sm="24">
                  <a-form-item label="流程分类">
                    <a-select v-model="queryParam.category" placeholder="请选择流程分类" allow-clear>
                      <a-select-option v-for="(item,index) in flowableCategoryListData" :key="index" :value="item.code" >{{ item.name }}</a-select-option>
                    </a-select>
                  </a-form-item>
                </a-col>
                <a-col :md="8" :sm="24">
                  <a-form-item label="挂起状态">
                    <a-select v-model="queryParam.suspended" placeholder="请选择挂起状态" allow-clear>
                      <a-select-option v-for="(item,index) in suspendedDropDown" :key="index" :value="item.code" >{{ item.value }}</a-select-option>
                    </a-select>
                  </a-form-item>
                </a-col>
                <a-col :md="8" :sm="24">
                  <a-form-item label="版本">
                    <a-input-number style="width: 100%" v-model="queryParam.version" allow-clear placeholder="请输入版本"/>
                  </a-form-item>
                </a-col>
              </template>
              <a-col :md="!advanced && 8 || 24" :sm="24" >
                <span class="table-page-search-submitButtons" :style="advanced && { float: 'right', overflow: 'hidden' } || {} ">
                  <a-button type="primary" @click="$refs.table.refresh(true)" >查询</a-button>
                  <a-button style="margin-left: 8px" @click="() => queryParam = {}">重置</a-button>
                  <a @click="toggleAdvanced" style="margin-left: 8px">
                    {{ advanced ? '收起' : '展开' }}
                    <a-icon :type="advanced ? 'up' : 'down'"/>
                  </a>
                </span>
              </a-col>
            </a-row>
          </a-form>
        </div>
        <s-table
          ref="table"
          size="default"
          :columns="columns"
          :data="loadData"
          :alert="true"
          :rowKey="(record) => record.id"
          :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange }"
        >
          <span slot="suspended" slot-scope="text,record" v-if="hasPerm('flowableDefinition:suspend') & hasPerm('flowableDefinition:active')">
            <a-popconfirm placement="top" :title="text==false? '确定挂起该定义？':'确定激活该定义？'" @confirm="() => suspendedChange(text,record)">
              <a>{{ suspendedFilter(text) }}</a>
            </a-popconfirm>
          </span>
          <span slot="suspended" v-else>
            {{ suspendedFilter(text) }}
          </span>
          <span slot="version" slot-scope="text">
            V{{ text }}.0
          </span>
          <span slot="action" slot-scope="text, record">
            <a @click="$refs.tracking.tracking(record.id)" v-if="hasPerm('flowableDefinition:trace')">追踪</a>
            <a-divider type="vertical" v-if="hasPerm('flowableDefinition:trace') & hasPerm('flowableDefinition:mapping') "/>
            <a-popconfirm v-if="hasPerm('flowableDefinition:mapping')" placement="topRight" title="将该定义映射到模型设计？" @confirm="() => flowableDefinitionMapping(record)">
              <a>映射</a>
            </a-popconfirm>
            <a-divider type="vertical"/>
            <a-dropdown>
              <a class="ant-dropdown-link">
                更多 <a-icon type="down"/>
              </a>
              <a-menu slot="overlay">
                <a-menu-item>
                  <a @click="openConfig(record)">配置</a>
                </a-menu-item>
                <a-menu-item v-if="hasPerm('flowableShortcut:add')">
                  <a @click="$refs.AddShortcutForm.add(record)">应用</a>
                </a-menu-item>
                <a-menu-item v-if="hasPerm('flowableDefinition:export')">
                  <a @click="flowableDefinitionExport(record)">导出</a>
                </a-menu-item>
                <a-menu-item v-if="hasPerm('flowableDefinition:delete')">
                  <a-popconfirm placement="topRight" title="删除流程定义会将该定义下的所有流程数据删除，若不使用该流程定义可挂起，是否继续删除？" @confirm="() => flowableDefinitionDelete(record)">
                    <a>删除</a>
                  </a-popconfirm>
                </a-menu-item>
              </a-menu>
            </a-dropdown>
          </span>
        </s-table>
        <add-shortcut-form ref="AddShortcutForm" @ok="handleOk" v-if="hasPerm('flowableShortcut:add')"/>
        <tracking ref="tracking" @ok="handleOk" v-if="hasPerm('flowableDefinition:trace')"/>
      </a-spin>
    </a-card>
    <div>
      <config-form ref="configForm" @ok="handleOk" @closeConfig="closeConfig" v-show="configFormShow"/>
    </div>
  </div>
</template>

<script>
  import { STable } from '@/components'
  import { flowableDefinitionPage, flowableDefinitionDelete, flowableDefinitionExport, flowableDefinitionMapping,
    flowableDefinitionSuspend, flowableDefinitionActive } from '@/api/modular/flowable/defenitionManage'
  import { flowableCategoryList } from '@/api/modular/flowable/categoryManage'
  import { sysDictTypeDropDown } from '@/api/modular/system/dictManage'
  import configForm from './configForm'
  import AddShortcutForm from './addShortcutForm'
  import tracking from './tracking'

  export default {
    components: {
      AddShortcutForm,
      STable,
      configForm,
      tracking
    },
    data () {
      return {
        advanced: false,
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '定义名称',
            dataIndex: 'name'
          },
          {
            title: '定义KEY',
            dataIndex: 'key'
          },
          {
            title: '版本',
            dataIndex: 'version',
            scopedSlots: { customRender: 'version' }
          },
          {
            title: '流程分类',
            dataIndex: 'categoryName'
          },
          {
            title: '是否挂起',
            dataIndex: 'suspended',
            scopedSlots: { customRender: 'suspended' }
          },
          {
            title: '操作',
            dataIndex: 'action',
            width: '200px',
            scopedSlots: { customRender: 'action' }
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return flowableDefinitionPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        selectedRowKeys: [],
        selectedRows: [],
        flowableCategoryListData: [],
        suspendedDropDown: [],
        cardLoading: false,
        // 卡片切换
        indexPageShow: true,
        configFormShow: false
    }
    },
    created () {
      this.sysDictTypeDropDown()
      this.flowableCategoryList()
    },

    methods: {

      openConfig (record) {
        this.indexPageShow = false
        this.configFormShow = true
        this.$refs.configForm.config(record)
      },
      closeConfig () {
        this.indexPageShow = true
        this.configFormShow = false
      },
      suspendedFilter (suspended) {
        // eslint-disable-next-line eqeqeq
        const values = this.suspendedDropDown.filter(item => item.code == suspended.toString())
        if (values.length > 0) {
          return values[0].value
        }
      },
      /**
       * 获取字典数据
       */
      sysDictTypeDropDown () {
        sysDictTypeDropDown({ code: 'suspended_status' }).then((res) => {
          this.suspendedDropDown = res.data
        })
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
       * 导出
       */
      flowableDefinitionExport (record) {
        this.cardLoading = true
        flowableDefinitionExport({ id: record.id }).then((res) => {
          this.cardLoading = false
          this.downloadfile(res)
        // eslint-disable-next-line handle-callback-err
        }).catch((err) => {
          this.cardLoading = false
          this.$message.error('导出错误：获取文件流错误')
        })
      },
      downloadfile (res) {
        var blob = new Blob([res.data], { type: 'application/octet-stream;charset=UTF-8' })
        var contentDisposition = res.headers['content-disposition']
        var patt = new RegExp('filename=([^;]+\\.[^\\.;]+);*')
        var result = patt.exec(contentDisposition)
        var filename = result[1]
        var downloadElement = document.createElement('a')
        var href = window.URL.createObjectURL(blob) // 创建下载的链接
        var reg = /^["](.*)["]$/g
        downloadElement.style.display = 'none'
        downloadElement.href = href
        downloadElement.download = decodeURI(filename.replace(reg, '$1'))
        document.body.appendChild(downloadElement)
        downloadElement.click()
        document.body.removeChild(downloadElement)
        window.URL.revokeObjectURL(href)
      },
      /**
       * 映射
       */
      flowableDefinitionMapping (record) {
        this.cardLoading = true
        flowableDefinitionMapping({ id: record.id }).then((res) => {
          this.cardLoading = false
          if (res.success) {
            this.$message.success('映射成功')
          } else {
            this.$message.error('映射失败：' + res.message)
          }
        })
      },
      /**
       * 挂起激活
       */
      suspendedChange (code, record) {
        this.cardLoading = true
        if (code) {
          flowableDefinitionActive(record).then((res) => {
            this.cardLoading = false
            if (res.success) {
              this.$message.success('激活成功')
              this.$refs.table.refresh()
            } else {
              this.$message.error('激活失败：' + res.message)
            }
          })
        } else {
          flowableDefinitionSuspend(record).then((res) => {
            this.cardLoading = false
            if (res.success) {
              this.$message.success('挂起成功')
              this.$refs.table.refresh()
            } else {
              this.$message.error('挂起失败：' + res.message)
            }
          })
        }
      },
      /**
       * 删除
       * @param record
       */
      flowableDefinitionDelete (record) {
        flowableDefinitionDelete(record).then((res) => {
          if (res.success) {
            this.$message.success('删除成功')
            this.$refs.table.refresh()
          } else {
            this.$message.error('删除失败：' + res.message)
          }
        }).catch((err) => {
          this.$message.error('删除错误：' + err.message)
        })
      },
      handleOk () {
        this.$refs.table.refresh()
      },
      toggleAdvanced () {
        this.advanced = !this.advanced
      },
      onSelectChange (selectedRowKeys, selectedRows) {
        this.selectedRowKeys = selectedRowKeys
        this.selectedRows = selectedRows
      }
    }
  }
</script>
<style lang="less">
  .table-operator {
    margin-bottom: 18px;
  }
  button {
    margin-right: 8px;
  }
</style>
