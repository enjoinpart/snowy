<template>
  <div>
    <a-spin :spinning="indexloading">
      <page-header
        title="支付体验区"
      >
        <slot slot="content">
          该体验区支持支付宝微信支付体验，在实际应用中根据您的业务进行调整
        </slot>
        <slot slot="extra">
          <img style="width: 155px; margin-right: 20px;" src="https://gw.alipayobjects.com/zos/rmsportal/RzwpdLnhmvDJToTdfDPe.png">
        </slot>
        <slot slot="pageMenu">
          <a-tabs
            default-active-key="alipay"
            tab-position="top"
            @prevClick="callback"
            @nextClick="callback"
          >
            <a-tab-pane key="alipay" tab="支付宝" style="padding-bottom: 20px">
              <a-card :bordered="false" style="background-color:#FAFAFA;">
                <div class="desc">
                  <div style="margin-bottom: 16px">
                    沙箱环境支付宝下载（仅支持安卓）：<a href="https://sandbox.alipaydev.com/user/downloadApp.htm" target="_blank">点我下载</a>
                  </div>
                  <div style="margin-bottom: 16px">
                    商户信息：
                    <span style="margin-left: 16px">商户账号：wkcmti6320@sandbox.com</span>
                    <span style="margin-left: 16px">商户UID：2088621955163903</span>
                  </div>
                  <div style="margin-bottom: 16px">
                    买家信息：
                    <span style="margin-left: 16px">买家账号：uvvjvx5395@sandbox.com</span>
                    <span style="margin-left: 16px">登录密码：111111</span>
                    <span style="margin-left: 16px">支付密码：111111</span>
                    <span style="margin-left: 16px">用户名称：沙箱环境</span>
                  </div>
                  <div style="font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 500; margin-bottom: 16px">
                    功能体验：
                  </div>
                  <div style="margin-bottom: 16px">
                    <a-icon type="check-circle" style="color: #0bbe18; margin-right: 8px"/>
                    PC支付
                    <a style="margin-left: 16px" @click="openPayInPrice('pcAliPay')">立即体验 <a-icon type="right" /></a>
                  </div>
                  <div style="margin-bottom: 16px">
                    <a-icon type="check-circle" style="color: #0bbe18; margin-right: 8px"/>
                    WAP支付
                    <a style="margin-left: 16px" @click="openPayInPrice('wapAliPay')">立即体验 <a-icon type="right" /></a>
                  </div>
                  <div style="margin-bottom: 20px">
                    <a-icon type="check-circle" style="color:#0bbe18; margin-right: 8px"/>
                    扫码支付
                    <a style="margin-left: 16px" @click="openPayInPrice('tradePreCreateAliPay')">立即体验 <a-icon type="right" /></a>
                  </div>
                  <div style="font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 500; margin-bottom: 16px">
                    对账单：
                  </div>
                  <div style="margin-bottom: 20px">
                    <div>
                      <div style="width: 50%;padding-bottom: 10px">
                        <a-row :gutter="24">
                          <a-col :md="8" :sm="24">
                            <a-select default-value="1" style="width:90%;margin-right: 10px" @change="handleSeleChange">
                              <a-select-option value="1">按天</a-select-option>
                              <a-select-option value="2">按月</a-select-option>
                            </a-select>
                          </a-col>
                          <a-col :md="8" :sm="24">
                            <a-month-picker
                              placeholder="请选择月份"
                              @change="dateOnChange"
                              :disabled-date="disabledDate"
                              v-if="monthDay === '2'"/>
                            <a-date-picker
                              placeholder="请选择日期"
                              @change="dateOnChange"
                              :disabled-date="disabledDate"
                              v-if="monthDay === '1'"/>
                          </a-col>
                          <a-col :md="8" :sm="24">
                            <a-button type="primary" @click="searchBill">
                              查询
                            </a-button>
                          </a-col>
                        </a-row>
                      </div>
                      <div v-if="dlHrefShow">
                        <a :href="dlHref" target="_blank">点击下载</a>
                      </div>
                    </div>
                  </div>
                </div>
              </a-card>
            </a-tab-pane>
            <a-tab-pane key="wxpay" tab="微信" style="padding-bottom: 20px">
              <a-card :bordered="false" style="background-color:#FAFAFA">
                <div class="desc">
                  <div style="font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 500; margin-bottom: 16px">
                    功能体验：
                  </div>
                  <div style="margin-bottom: 16px">
                    <a-icon type="close-circle-o" style="color: red; margin-right: 8px"/>
                    微信支付
                    研发小哥哥正在拼命的完善中...（并没有，懒得申请微信支付）
                  </div>
                </div>
              </a-card>
            </a-tab-pane>
          </a-tabs>
        </slot>
      </page-header>
      <a-modal
        title="提示"
        :width="400"
        :closable="false"
        :visible="visible"
        :confirmLoading="confirmModalLoading"
        @ok="handleSubmit"
        @cancel="handleCancel"
      >
        <a-spin :spinning="spinloading">
          <a-form :form="form" v-show="formShow">
            <a-form-item
              label="支付金额"
              has-feedback
            >
              <a-input-number placeholder="请输入请输入支付金额（最少0.01元）" style="width: 100%" v-decorator="['amount',{rules: [{required: true, message: '请输入请输入支付金额（最少0.01元）'}]}]" :min="0.01" :max="1000" />
            </a-form-item>
          </a-form>
          <div style="text-align: center" v-show="aliPayQrPriceShow">
            <img
              style="width: 200px; margin-bottom: 20px;"
              :src="this.aliPayQrSrc"
            >
            <div>
              <span>请使用支付宝扫码，您需要支付：{{ this.aliPayQrPrice }}元</span>
            </div>
          </div>
        </a-spin>
      </a-modal>
    </a-spin>
  </div>
</template>
<script>
  import PageHeader from '../../components/PageHeader/PageHeader'
  import { billDownloadUrlQuery, tradeQuery } from '@/api/modular/pay/aliPayMgrManage'
  import { getOutTradeNo } from '@/api/modular/pay/aliPayManage'
  import moment from 'moment'

  export default {
    components: { PageHeader },
    data () {
      return {
        payTyprItem: '',
        visible: false,
        confirmModalLoading: false,
        aliPayQrSrc: '',
        aliPayQrPrice: '',
        formShow: true,
        aliPayQrPriceShow: false,
        spinloading: false,
        billDownloadUrlQueryDate: '',
        indexloading: false,
        monthDay: '1',
        dlHref: '',
        dlHrefShow: false,
        outTradeNo: '',
        form: this.$form.createForm(this)
      }
    },
    methods: {
      moment,
      /**
       * 切换标签
       */
      callback (val) {
      },
      /**
       * 点击立即体验
       */
      openPayInPrice (item) {
        this.visible = true
        this.payTyprItem = item
      },
      /**
       * 输入完价格去执行支付方式
       */
      handleSubmit () {
        const { form: { validateFields } } = this
        validateFields((errors, values) => {
          if (!errors) {
            if (this.payTyprItem === 'pcAliPay') {
              this.pcAliPay(values)
            }
            if (this.payTyprItem === 'wapAliPay') {
              this.wapAliPay(values)
            }
            if (this.payTyprItem === 'tradePreCreateAliPay') {
              this.tradePreCreateAliPay(values)
            }
          }
        })
      },
      /**
       * 支付宝pc支付
       */
      pcAliPay (values) {
        getOutTradeNo().then((res) => {
          if (res.success) {
            this.outTradeNo = res.data
            window.open(process.env.VUE_APP_API_BASE_URL + '/aliPay/pcPay?amount=' + values.amount + '&outTradeNo=' + res.data, '_blank')
            this.handleCancel()
            this.showConfirm(this.outTradeNo, this.$message)
          } else {
            console.log('pc支付：' + JSON.stringify(res))
          }
        })
      },
      /**
       * 支付宝wap支付
       */
      wapAliPay (values) {
        getOutTradeNo().then((res) => {
          if (res.success) {
            this.outTradeNo = res.data
            window.open(process.env.VUE_APP_API_BASE_URL + '/aliPay/wapPay?amount=' + values.amount + '&outTradeNo=' + res.data, '_blank')
            this.handleCancel()
            this.showConfirm(this.outTradeNo, this.$message)
          } else {
            console.log('wap支付：' + JSON.stringify(res))
          }
        })
      },
      /**
       * 支付宝扫码支付
       */
      tradePreCreateAliPay (values) {
        this.aliPayQrPrice = values.amount
        this.formShow = false
        this.aliPayQrPriceShow = true
        this.aliPayQrSrc = process.env.VUE_APP_API_BASE_URL + '/aliPay/tradePreCreatePay?amount=' + values.amount
        this.imgInit()
      },
      /**
       * 加载二维码loading
       */
      imgInit () {
        this.spinloading = true
        var newImg = new Image()
        newImg.src = this.aliPayQrSrc
        newImg.onerror = () => { // 图片加载错误时
          this.spinloading = false
          newImg.src = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489486509807&di=22213343ba71ad6436b561b5df999ff7&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F77%2F31%2F20300542906611142174319458811.jpg'
        }
        newImg.onload = () => { // 图片加载成功后
          this.spinloading = false
          this.aliPayQrSrc = newImg.src
          // this.getTradePreCreateAliPayStatus()
        }
      },
      /**
       * 定时器轮询二维码支付状态
       */
      /* getTradePreCreateAliPayStatus(){
        let timer
        getPayStatus().then((res)=>{
          if(res.success){
            clearTimeout(timer) //清理定时任务
            this.handleCancel()
            this.$message.success('扫码支付成功')
          }else{
            timer = setTimeout(() => {
              this.getTradePreCreateAliPayStatus()
            }, 2000)
          }
        }).catch(err=>{
          clearTimeout(timer)
          this.$message.error('扫码支付遇到错误')
        })
      }, */
      /**
       * 选择查询方式
       */
      handleSeleChange (value) {
        this.billDownloadUrlQueryDate = ''
        this.monthDay = value
      },
      /**
       * 对账单日期选择
       */
      dateOnChange (date, dateString) {
        this.billDownloadUrlQueryDate = dateString
      },
      /**
       * 不可选的时间
       */
      disabledDate (current) {
        return moment().subtract(1, 'days') < current
      },
      /**
       * 查询对账单
       */
      searchBill () {
        if (this.billDownloadUrlQueryDate === '') {
          this.$message.error('请选择对账单时间')
        } else {
          this.indexloading = true
          billDownloadUrlQuery({ billDate: this.billDownloadUrlQueryDate }).then((res) => {
            this.indexloading = false
            if (res.success) {
              this.dlHref = res.data.bill_download_url
              this.dlHrefShow = true
            } else {
              this.dlHrefShow = false
              this.$message.error(res.message)
            }
          })
        }
      },
      /**
       * 弹框提示是否支付完成
       */
      showConfirm (outTradeNo, message) {
        this.$confirm({
          title: '请确认！',
          cancelText: '未支付',
          okText: '已支付完成',
          content: '您发起的订单支付是否已支付完成？',
          onOk () {
            return new Promise((resolve, reject) => {
              const params = {
                outTradeNo: outTradeNo
              }
              tradeQuery(params).then((res) => {
                setTimeout(Math.random() > 0.5 ? resolve : reject, 1000)
              })
            }).catch(() => console.log('Oops errors!'))
          },
          onCancel () {
            return new Promise((resolve, reject) => {
              const params = {
                outTradeNo: outTradeNo
              }
              tradeQuery(params).then((res) => {
                setTimeout(Math.random() > 0.5 ? resolve : reject, 1000)
              })
            }).catch(() => console.log('Oops errors!'))
          }
        })
      },
      handleCancel () {
        this.form.resetFields()
        this.billDownloadUrlQueryDate = ''
        this.formShow = true
        this.aliPayQrPriceShow = false
        this.aliPayQrSrc = ''
        this.aliPayQrPrice = ''
        this.payTyprItem = ''
        this.visible = false
      }
    }
  }
</script>
