package cn.sk.huiadminbgtemp.sys.mapper;

import cn.sk.huiadminbgtemp.base.mapper.IBaseMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysResourceCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysResourceQueryVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface SysResourceMapper extends IBaseMapper<SysResourceCustom, SysResourceQueryVo> {
    List<Map<String,Object>> selectListByRoleId(@Param("params") Map<String,Object> params);
}