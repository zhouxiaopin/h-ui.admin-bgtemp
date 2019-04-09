package cn.sk.huiadminbgtemp.business.service;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.business.pojo.OrganCustom;
import cn.sk.huiadminbgtemp.business.pojo.OrganQueryVo;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;

import java.util.List;
import java.util.Map;

/**
 * 机构信息业务逻辑接口
 */
public interface IOrganService extends IBaseService<OrganCustom, OrganQueryVo>{
    //根据条件获取树形
    ServerResponse<List<Map<String,Object>>> queryOrganTree(OrganQueryVo organQueryVo);
}
