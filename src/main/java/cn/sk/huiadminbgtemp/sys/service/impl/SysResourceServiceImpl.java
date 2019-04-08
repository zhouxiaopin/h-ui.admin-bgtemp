package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.mapper.SysResourceMapper;
import cn.sk.huiadminbgtemp.sys.pojo.*;
import cn.sk.huiadminbgtemp.sys.service.ISysResourceService;
import cn.sk.huiadminbgtemp.sys.vo.DataTableVo;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 系统资源业务逻辑接口实现类
 */
@Service
public class SysResourceServiceImpl extends BaseServiceImpl<SysResourceCustom, SysResourceQueryVo> implements ISysResourceService {
    @Autowired
    private SysResourceMapper sysResourceMapper;

    @Override
    public ServerResponse<List<Map<String, Object>>> querySysResourceTree(SysResourceQueryVo sysResourceQueryVo) {
        List<SysResourceCustom> sysResourceCustoms = sysResourceMapper.selectListByQueryVo(sysResourceQueryVo);
        List<Map<String, Object>> data = Lists.newArrayList();
        for (int i = 0,len = sysResourceCustoms.size(); i < len; i++){
            SysResourceCustom sysResourceCustom = sysResourceCustoms.get(i);
//            {id:6, pId:0, name:"福建省", open:true, nocheck:true},
//            { id:1, pId:0, name:"一级分类", open:true},
            Map<String,Object> item = Maps.newHashMap();
            item.put("id",sysResourceCustom.getrId());
            item.put("pId",sysResourceCustom.getParentId());
            item.put("name",sysResourceCustom.getrName());
            item.put("level",sysResourceCustom.getrLevel());
            item.put("open",true);
            data.add(item);
//
        }
        return ServerResponse.createBySuccess(data);
    }

    @Override
    public DataTableVo<SysResourceCustom> queryObjsByPage(SysResourceQueryVo entityQueryVo) {
        SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
        SysDictCustom condition = new SysDictCustom();

        sysDictQueryVo.getIsNoLike().put("dictType",true);

        condition.setDictType(Const.Dict.SysResource.RES_TYPE);
        condition.setRecordStatus(Const.RecordStatus.ABLE);

        sysDictQueryVo.setSysDictCustom(condition);
        List<SysDictCustom> sysDictCustoms = sysDictMapper.selectListByQueryVo(sysDictQueryVo);
        //类型
        Map<String,String> menuTypeMap = Maps.newHashMap();
        for(int i = 0,len = sysDictCustoms.size(); i < len; i++) {
            SysDictCustom sysDictCustom = sysDictCustoms.get(i);
            menuTypeMap.put(sysDictCustom.getDictCode(),sysDictCustom.getCodeName());
        }
        //级别
        condition.setDictType(Const.Dict.SysResource.RES_LEVEL);
        sysDictCustoms = sysDictMapper.selectListByQueryVo(sysDictQueryVo);
        Map<String,String> menuLevelMap = Maps.newHashMap();
        for(int i = 0,len = sysDictCustoms.size(); i < len; i++) {
            SysDictCustom sysDictCustom = sysDictCustoms.get(i);
            menuLevelMap.put(sysDictCustom.getDictCode(),sysDictCustom.getCodeName());
        }

        //数据封装
        DataTableVo<SysResourceCustom> dataTableVo = super.queryObjsByPage(entityQueryVo);
        List<SysResourceCustom> data = dataTableVo.getData();
        for(int i = 0,len = data.size(); i < len; i++) {
            SysResourceCustom sysResourceCustom = data.get(i);
            sysResourceCustom.setrType(menuTypeMap.get(sysResourceCustom.getrType()));
            sysResourceCustom.setRLevelStr(menuLevelMap.get(sysResourceCustom.getrLevel().toString()));
        }
        return dataTableVo;
    }

}
