<template>
  <div>
    <a-card :bordered="false" :loading="cardLoading" v-show="indexPageShow">
      <div v-for="(item,index) in shortcutListData" :key="index">
        <a-divider orientation="left">
          {{ item.categoryName }}
        </a-divider>
        <a-row>
          <a-col :md="6" :sm="24" v-for="(items,indexs) in item.childrenList" :key="indexs">
            <div class="iconDiv" @click="openCreateForm(items)">
              <div class="a_iconDiv">
                <a-icon style="fontSize:40px" :type="items.icon"/>
              </div>
              <span>
                <a-tooltip placement="top">
                  <template slot="title">
                    <span>{{ items.description }}</span>
                  </template>
                  {{ items.name }}
                </a-tooltip>
              </span>
            </div>
          </a-col>
        </a-row>
      </div>
    </a-card>
    <div><create-form ref="createForm" @close="closeCreateForm" @rollback="rollbackCreateForm" v-show="createFormShow"/></div>
  </div>
</template>
<script>
    import { flowableShortcutList } from '@/api/modular/flowable/shortcutManage'
    import createForm from './createForm'
    export default {
      components: {
        createForm
      },
      data () {
        return {
          shortcutListData: [],
          cardLoading: false,
          indexPageShow: true,
          createFormShow: false
        }
      },
      created () {
        this.cardLoading = true
        flowableShortcutList().then((res) => {
          this.cardLoading = false
          this.shortcutListData = res.data
        })
      },
      methods: {
        openCreateForm (items) {
          if (items.processDefinitionId == null) {
            this.$message.warning('打开失败：表单项定义processDefinitionId不存在')
          } else {
            this.indexPageShow = false
            this.createFormShow = true
            this.$refs.createForm.open(items)
          }
        },
        closeCreateForm () {
          this.indexPageShow = true
          this.createFormShow = false
        },
        rollbackCreateForm () {
          this.indexPageShow = true
          this.createFormShow = false
        }
      }
    }
</script>

<style scoped>
  .iconDiv{
     text-align: center;
     color: #595959;
     background: #FFFFFF;
     height: 110px;
     margin:10px;
     border:1px solid #E8E8E8;
     border-radius:1px
  }
  .iconDiv:hover{
     background-color: rgba(24, 144, 255, 0.5);
     color: #FFFFFF;
     border:1px solid rgba(24, 144, 255, 0.1);
     cursor:pointer;
     box-shadow: 0 1px 10px rgba(24, 144, 255, 0.5);
     transition: all .2s ease-in-out;
  }
  .a_iconDiv{
     margin-top: 20px;
     margin-bottom: 10px;
  }
</style>
