package com.cn.xiaonuo.pay.core.pojo;

import com.cn.xiaonuo.pay.core.factory.YamlConfigFactory;
import lombok.Data;
import org.springframework.context.annotation.PropertySource;

/**
 * 微信支付配置文件对应实体类
 *
 * @author xuyuxiang
 * @date 2020/8/11 11:41
 **/
@PropertySource(value = "classpath:/wxpay.yml", factory = YamlConfigFactory.class)
@Data
public class WxPayBean {

}
