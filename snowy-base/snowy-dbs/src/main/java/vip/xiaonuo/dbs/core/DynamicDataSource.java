/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.dbs.core;


import cn.hutool.core.util.StrUtil;
import vip.xiaonuo.core.dbs.CurrentDataSourceContext;
import vip.xiaonuo.dbs.core.context.DataSourceContext;
import vip.xiaonuo.dbs.core.consts.DatabaseConstant;

import javax.sql.DataSource;
import java.util.Map;

/**
 * 动态数据源
 *
 * @author xuyuxiang
 * @date 2017年3月5日 上午9:11:49
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    /**
     * 决断当前执行的server或dao用哪个数据源
     *
     * @author xuyuxiang
     * @date 2020/8/27
     */
    @Override
    protected DataSource determineDataSource() {

        // 获取当前Context存储的数据源名称
        String dataSourceType = CurrentDataSourceContext.getDataSourceType();

        // 如果当前Context没有值，就用主数据源
        if (StrUtil.isEmpty(dataSourceType)) {
            dataSourceType = DatabaseConstant.MASTER_DATASOURCE_NAME;
        }

        // 从数据源容器中获取对应的数据源
        Map<String, DataSource> dataSources = DataSourceContext.getDataSources();
        return dataSources.get(dataSourceType);
    }

}
