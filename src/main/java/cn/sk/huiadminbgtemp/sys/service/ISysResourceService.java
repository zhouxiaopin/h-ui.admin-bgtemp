package cn.sk.huiadminbgtemp.sys.service;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysResourceCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysResourceQueryVo;

import java.util.List;
import java.util.Map;

/**
 * 系统资源业务逻辑接口
 */
public interface ISysResourceService extends IBaseService<SysResourceCustom, SysResourceQueryVo>{
    //根据条件获取树形
    ServerResponse<List<Map<String,Object>>> querySysResourceTree(SysResourceQueryVo sysResourceQueryVo);
}
