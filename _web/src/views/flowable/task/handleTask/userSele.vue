<template>
  <a-modal
    title="用户选择器"
    :width="1000"
    :confirmLoading="confirmLoading"
    :visible="visible"
    @ok="handleSubmit"
    @cancel="handleCancel"
  >
    <a-row :gutter="24" >
      <a-col :md="7" :sm="24">
        <a-card size="small" :loading="treeLoading">
          <div v-if="this.orgTree != ''">
            <a-tree
              style="overflow:auto"
              :treeData="orgTree"
              v-if="orgTree.length"
              @select="handleClick"
              :defaultExpandAll="true"
              :defaultExpandedKeys="defaultExpandedKeys"
              :replaceFields="replaceFields" />
          </div>
          <div v-else>
            <a-empty :image="simpleImage" />
          </div>
        </a-card>
      </a-col>
      <a-col :md="12" :sm="24">
        <a-card size="small">
          <div class="table-page-search-wrapper" v-if="hasPerm('sysUser:page')">
            <a-form layout="inline">
              <a-row :gutter="48">
                <a-col :md="16" :sm="24">
                  <a-form-item label="关键词" >
                    <a-input v-model="queryParam.searchValue" allow-clear placeholder="请输入姓名、账号、手机号"/>
                  </a-form-item>
                </a-col>
                <a-col :md="8" :sm="24">
                  <a-button type="primary" @click="$refs.table.refresh(true)">查询</a-button>
                </a-col>
              </a-row>
            </a-form>
          </div>
          <s-table
            ref="table"
            size="middle"
            :columns="columns"
            :data="loadData"
            :alert="true"
            :rowKey="(record) => record.id"
            :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange ,type:'radio'}"
          >
          </s-table>
        </a-card>
      </a-col>
      <a-col :md="5" :sm="24">
        <a-card size="small">
          已选择：
          <template v-for="(item,index) in selectedRows">
            <a-tag :v-model="true" :key="index">
              {{ item.name }}
            </a-tag>
          </template>
        </a-card>
      </a-col>
    </a-row>
  </a-modal>

</template>

<script>
  import { STable } from '@/components'
  import { Empty } from 'ant-design-vue'
  import { getOrgTree } from '@/api/modular/system/orgManage'
  import { getUserPage } from '@/api/modular/system/userManage'

  export default {
    components: {
      STable
    },

    data () {
      return {
        // 查询参数
        queryParam: {},
        // 表头
        columns: [
          {
            title: '账号',
            dataIndex: 'account'
          },
          {
            title: '姓名',
            dataIndex: 'name'
          },
          {
            title: '手机',
            dataIndex: 'phone'
          }
        ],
        // 加载数据方法 必须为 Promise 对象
        loadData: parameter => {
          return getUserPage(Object.assign(parameter, this.queryParam)).then((res) => {
            return res.data
          })
        },
        dataSource: [],
        orgTree: [],
        selectedRowKeys: [],
        selectedRows: [],
        defaultExpandedKeys: [],
        treeLoading: true,
        simpleImage: Empty.PRESENTED_IMAGE_SIMPLE,
        replaceFields: {
          key: 'id'
        },
        // 弹出框参数
        visible: false,
        confirmLoading: false
      }
    },

    methods: {
      open () {
        this.visible = true
        this.getOrgTree()
      },
      /**
       * 获取到机构树，展开顶级下树节点，考虑到后期数据量变大，不建议全部展开
       */
      getOrgTree () {
        getOrgTree(Object.assign(this.queryParam)).then(res => {
          this.treeLoading = false
          if (!res.success) {
            return
          }
          this.orgTree = res.data
          for (var item of res.data) {
            // eslint-disable-next-line eqeqeq
            if (item.parentId == 0) {
              this.defaultExpandedKeys.push(item.id)
            }
          }
        })
      },
      /**
       * 点击左侧机构树查询列表
       */
      handleClick (e) {
        this.queryParam = {
          'sysEmpParam.orgId': e.toString()
        }
        this.$refs.table.refresh(true)
      },
      toggleAdvanced () {
        this.advanced = !this.advanced
      },
      handleOk () {
        this.$refs.table.refresh()
      },
      onSelectChange (selectedRowKeys, selectedRows) {
        this.selectedRowKeys = selectedRowKeys
        this.selectedRows = selectedRows
      },
      handleSubmit () {
        this.visible = false
      },
      handleCancel () {
        this.orgTree = []
        this.queryParam = {}
        this.loadData = parameter => { return [] }
        this.visible = false
      }
    }

  }
</script>
