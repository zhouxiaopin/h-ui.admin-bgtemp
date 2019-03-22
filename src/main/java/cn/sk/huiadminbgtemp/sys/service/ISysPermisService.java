package cn.sk.huiadminbgtemp.sys.service;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisQueryVo;

import java.util.List;
import java.util.Map;

/**
 * 系统权限业务逻辑接口
 */
public interface ISysPermisService extends IBaseService<SysPermisCustom,SysPermisQueryVo>{
    //根据条件获取树形
    ServerResponse<List<Map<String,Object>>> querySysPermisTree(SysPermisQueryVo sysPermisQueryVo);
}
