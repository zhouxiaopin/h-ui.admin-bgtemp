package cn.sk.huiadminbgtemp.sys.utils;

import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import org.apache.shiro.SecurityUtils;
import org.springframework.util.ObjectUtils;

public class SysUtils {
    public static Integer getUserId() {
        Integer id = null;
        SysUserCustom sysUserInfo = (SysUserCustom) SecurityUtils.getSubject().getPrincipal();
        if(!ObjectUtils.isEmpty(sysUserInfo)) {
            id = sysUserInfo.getuId();
        }
        return id;
    }

    public static SysUserCustom getSysUser() {
        SysUserCustom sysUserInfo = (SysUserCustom) SecurityUtils.getSubject().getPrincipal();
        return sysUserInfo;
    }

}
