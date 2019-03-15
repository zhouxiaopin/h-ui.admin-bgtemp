package cn.sk.huiadminbgtemp.sys.mapper;

import cn.sk.huiadminbgtemp.sys.pojo.SysRolePermis;

public interface SysRolePermisMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRolePermis record);

    int insertSelective(SysRolePermis record);

    SysRolePermis selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRolePermis record);

    int updateByPrimaryKey(SysRolePermis record);
}