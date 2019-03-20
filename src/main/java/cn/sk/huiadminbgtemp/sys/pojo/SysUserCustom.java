package cn.sk.huiadminbgtemp.sys.pojo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * 系统用户实体类的扩展类
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SysUserCustom extends SysUser {
    //确认密码
    private String password2;

    public SysUserCustom(Integer uId, String userName, String password, String realName, String sex, String email, String mobilePhone, String salt, String descri, String recordStatus, Date updateTime, Date createTime) {
        super(uId, userName, password, realName,sex, email, mobilePhone, salt, descri, recordStatus, updateTime, createTime);

    }
}