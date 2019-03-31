package cn.sk.huiadminbgtemp.sys.pojo;

import cn.sk.huiadminbgtemp.base.pojo.BaseQueryVo;
import lombok.Getter;
import lombok.Setter;

/**
 * 系统日志实体类的包装对象
 */
@Getter
@Setter
public class SysLogQueryVo extends BaseQueryVo{
    private SysLogCustom sysLogCustom;
    private String startCreatTime;
    private String endCreatTime;

}