package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.mapper.SysUserMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysUserService;
import cn.sk.huiadminbgtemp.sys.utils.ShiroUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 系统用户业务逻辑接口实现类
 */
@Service
public class SysUserServiceImpl extends BaseServiceImpl<SysUserCustom,SysUserQueryVo> implements ISysUserService {
    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    protected ServerResponse<SysUserCustom> insertBefore(SysUserCustom sysUserCustom) {
        //判断盐值是否存在
        String salt = sysUserCustom.getSalt();
        if(StringUtils.isEmpty(salt)) {
            salt = ShiroUtils.DEFALT_SALT;
            sysUserCustom.setSalt(salt);
        }
        sysUserCustom.setPassword(ShiroUtils.getMd5Pwd(salt,sysUserCustom.getPassword()));
        sysUserCustom.setRecordStatus(Const.RecordStatus.DISABLE);
        sysUserCustom.setCreateTime(new Date());
        return super.insertBefore(sysUserCustom);
    }
}
