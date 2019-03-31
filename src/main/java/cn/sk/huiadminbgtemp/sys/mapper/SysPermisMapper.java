package cn.sk.huiadminbgtemp.sys.mapper;

import cn.sk.huiadminbgtemp.base.mapper.IBaseMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisQueryVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SysPermisMapper extends IBaseMapper<SysPermisCustom,SysPermisQueryVo> {
    List<SysPermisCustom> selectListByRoleId(@Param("params") Map<String,Object> params);
}