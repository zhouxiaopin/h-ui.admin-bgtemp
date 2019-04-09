package cn.sk.huiadminbgtemp.business.pojo;

import cn.sk.huiadminbgtemp.base.pojo.BaseQueryVo;
import lombok.Getter;
import lombok.Setter;

/**
 * 系统权限实体类的包装对象
 */
@Getter
@Setter
public class OrganQueryVo extends BaseQueryVo{
    private OrganCustom organCustom;

}