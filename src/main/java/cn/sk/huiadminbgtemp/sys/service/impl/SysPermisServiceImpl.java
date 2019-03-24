package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.mapper.SysPermisMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysPermisService;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 系统权限业务逻辑接口实现类
 */
@Service
public class SysPermisServiceImpl extends BaseServiceImpl<SysPermisCustom,SysPermisQueryVo> implements ISysPermisService {
    @Autowired
    private SysPermisMapper sysPermisMapper;


    @Override
    public ServerResponse<List<Map<String, Object>>> querySysPermisTree(SysPermisQueryVo sysPermisQueryVo) {
        List<SysPermisCustom> sysPermisCustoms = sysPermisMapper.selectListByQueryVo(sysPermisQueryVo);
        List<Map<String, Object>> data = Lists.newArrayList();
        for (int i = 0,len = sysPermisCustoms.size(); i < len; i++){
            SysPermisCustom sysPermisCustom = sysPermisCustoms.get(i);
//            {id:6, pId:0, name:"福建省", open:true, nocheck:true},
//            { id:1, pId:0, name:"一级分类", open:true},
            Map<String,Object> item = Maps.newHashMap();
            item.put("id",sysPermisCustom.getpId());
            item.put("pId",sysPermisCustom.getParentId());
            item.put("name",sysPermisCustom.getpName());
            item.put("level",sysPermisCustom.getpLevel());
            item.put("open",true);
            data.add(item);
//
        }
        return ServerResponse.createBySuccess(data);
    }
}
