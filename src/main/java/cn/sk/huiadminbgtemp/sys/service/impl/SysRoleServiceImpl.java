package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.mapper.SysRoleMapper;
import cn.sk.huiadminbgtemp.sys.mapper.SysUserMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysRole;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleQueryVo;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.service.ISysRoleService;
import cn.sk.huiadminbgtemp.sys.utils.ShiroUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统角色业务逻辑接口实现类
 */
@Service
public class SysRoleServiceImpl extends BaseServiceImpl<SysRoleCustom,SysRoleQueryVo> implements ISysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;


}
