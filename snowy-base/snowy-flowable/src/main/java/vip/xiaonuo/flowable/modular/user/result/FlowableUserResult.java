package vip.xiaonuo.flowable.modular.user.result;

import lombok.Data;
import org.flowable.idm.api.User;

/**
 * flowable用户结果集
 *
 * @author xuyuxiang
 * @date 2020/6/9 16:33
 */
@Data
public class FlowableUserResult {

    /**
     * 用户id
     */
    protected String id;

    /**
     * 姓名
     */
    protected String firstName;


    public FlowableUserResult(User user) {
        this.setId(user.getId());
        this.setFirstName(user.getFirstName());
    }
}
