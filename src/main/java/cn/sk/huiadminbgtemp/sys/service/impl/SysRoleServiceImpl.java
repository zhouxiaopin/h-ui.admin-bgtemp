package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.common.CustomException;
import cn.sk.huiadminbgtemp.sys.common.ResponseCode;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.mapper.SysRoleMapper;
import cn.sk.huiadminbgtemp.sys.mapper.SysRolePermisMapper;
import cn.sk.huiadminbgtemp.sys.pojo.*;
import cn.sk.huiadminbgtemp.sys.service.ISysRoleService;
import com.google.common.collect.Lists;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 系统角色业务逻辑接口实现类
 */
@Service
public class SysRoleServiceImpl extends BaseServiceImpl<SysRoleCustom,SysRoleQueryVo> implements ISysRoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;
    @Autowired
    private SysRolePermisMapper sysRolePermisMapper;

    @Override
    protected ServerResponse<SysRoleCustom> insertAfter(SysRoleCustom sysRoleCustom) {
        //判断是否有设置权限
        String[] permisIds = StringUtils.split(sysRoleCustom.getPermisIds(),",");
        if(!ArrayUtils.isEmpty(permisIds)) {
            List<SysRolePermis> sysRolePermiss = Lists.newArrayList();
            for(int i = 0,len = permisIds.length; i < len; i++) {
                SysRolePermis sysRolePermis = new SysRolePermis(null,sysRoleCustom.getRoleId(),
                        Integer.valueOf(permisIds[i]));
                sysRolePermiss.add(sysRolePermis);
            }
            int num = sysRolePermisMapper.batchInsert(sysRolePermiss);
            if(num < 1) {
                throw new CustomException(ResponseCode.ADD_FAIL);
            }
        }
        return super.insertAfter(sysRoleCustom);
    }

    @Override
    public ServerResponse<SysRoleCustom> queryObj(SysRoleCustom entityCustom) {
        ServerResponse<SysRoleCustom> serverResponse = super.queryObj(entityCustom);
        //查询角色权限
        List<SysRolePermis> sysRolePermisList = sysRolePermisMapper.selectByRoleId(entityCustom.getRoleId());
        StringBuilder permisIds = new StringBuilder();
        for(int i = 0,len = sysRolePermisList.size(); i < len; i++) {
            permisIds.append(sysRolePermisList.get(i).getPermisId()).append(",");
        }
        if(permisIds.length()>1) {
            permisIds.deleteCharAt(permisIds.length()-1);
        }
        serverResponse.getData().setPermisIds(permisIds.toString());
        return serverResponse;
    }

    @Override
    protected ServerResponse<SysRoleCustom> updateBefore(SysRoleCustom sysRoleCustom) {
        //判断是否有修改权限
        if(StringUtils.equals(sysRoleCustom.getPermisIds(),sysRoleCustom.getOldPermisIds())) {
            return super.updateBefore(sysRoleCustom);
        }

        //查询系统角色之前是有拥有权限
        Integer roleId = sysRoleCustom.getRoleId();
        List<SysRolePermis> sysRolePermisList = sysRolePermisMapper.selectByRoleId(roleId);
        if(!CollectionUtils.isEmpty(sysRolePermisList)) {
            //清除原来的权限
            int num = sysRolePermisMapper.realDeleteInRoleId(roleId);
            if(num < 1) {
                throw new CustomException(ResponseCode.MDF_FAIL);
            }
        }


        //判断是否有设置权限
        String[] permisIds = StringUtils.split(sysRoleCustom.getPermisIds(),",");
        if(!ArrayUtils.isEmpty(permisIds)) {
            sysRolePermisList = Lists.newArrayList();
            for(int i = 0,len = permisIds.length; i < len; i++) {
                SysRolePermis sysRolePermis = new SysRolePermis(null,sysRoleCustom.getRoleId(),
                        Integer.valueOf(permisIds[i]));
                sysRolePermisList.add(sysRolePermis);
            }
            int num = sysRolePermisMapper.batchInsert(sysRolePermisList);
            if(num < 1) {
                throw new CustomException(ResponseCode.MDF_FAIL);
            }
        }
        return super.updateBefore(sysRoleCustom);
    }
}
