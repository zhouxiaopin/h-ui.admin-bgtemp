package cn.sk.huiadminbgtemp.sys.mapper;

import cn.sk.huiadminbgtemp.sys.pojo.SysRolePermis;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysRolePermisMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRolePermis record);

    int insertSelective(SysRolePermis record);

    SysRolePermis selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRolePermis record);

    int updateByPrimaryKey(SysRolePermis record);

    //批量插入
    int batchInsert(List<SysRolePermis> records);
    //查询通过用户id
    List<SysRolePermis> selectByRoleId(Integer roleId);
    //硬删除
    int realDeleteInRoleId(@Param("roleId") Integer roleId);
}