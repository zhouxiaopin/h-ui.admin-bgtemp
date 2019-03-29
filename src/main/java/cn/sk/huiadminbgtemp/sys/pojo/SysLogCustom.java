package cn.sk.huiadminbgtemp.sys.pojo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 系统日志实体类的扩展类
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
//@AllArgsConstructor
public class SysLogCustom extends SysLog {

    public SysLogCustom(Long id, Integer userId, String userName, String operation, String methodName, String params, String ip, String expan1, String expan2, String expan3, String expan4, String expan5, String expan6, Date createDate) {
        super(id, userId, userName, operation,  methodName, params, ip, expan1, expan2, expan3, expan4, expan5, expan6, createDate);
    }

}