package cn.sk.huiadminbgtemp.sys.mapper;

import cn.sk.huiadminbgtemp.base.mapper.IBaseMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleQueryVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SysRoleMapper extends IBaseMapper<SysRoleCustom,SysRoleQueryVo> {

    List<Map<String,Object>> selectListByUserId(@Param("params") Map<String,Object> params);

}