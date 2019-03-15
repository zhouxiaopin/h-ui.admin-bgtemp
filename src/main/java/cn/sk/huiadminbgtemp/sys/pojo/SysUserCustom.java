package cn.sk.huiadminbgtemp.sys.pojo;

import lombok.Getter;
import lombok.Setter;

/**
 * 系统用户实体类的扩展类
 */
@Getter
@Setter
public class SysUserCustom extends SysUser {
    //确认密码
    private String password2;
}