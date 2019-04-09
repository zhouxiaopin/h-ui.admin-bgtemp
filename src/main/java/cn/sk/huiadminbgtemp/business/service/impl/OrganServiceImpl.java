package cn.sk.huiadminbgtemp.business.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.business.common.Const;
import cn.sk.huiadminbgtemp.business.mapper.OrganMapper;
import cn.sk.huiadminbgtemp.business.pojo.OrganCustom;
import cn.sk.huiadminbgtemp.business.pojo.OrganQueryVo;
import cn.sk.huiadminbgtemp.business.service.IOrganService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.common.SysConst;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictQueryVo;
import cn.sk.huiadminbgtemp.sys.vo.DataTableVo;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 机构信息业务逻辑接口实现类
 */
@Service
public class OrganServiceImpl extends BaseServiceImpl<OrganCustom, OrganQueryVo> implements IOrganService {
    @Autowired
    private OrganMapper organMapper;

    @Override
    public ServerResponse<List<Map<String, Object>>> queryOrganTree(OrganQueryVo organQueryVo) {
        List<OrganCustom> organCustoms = organMapper.selectListByQueryVo(organQueryVo);
        List<Map<String, Object>> data = Lists.newArrayList();
        for (int i = 0,len = organCustoms.size(); i < len; i++){
            OrganCustom organCustom = organCustoms.get(i);
//            {id:6, pId:0, name:"福建省", open:true, nocheck:true},
//            { id:1, pId:0, name:"一级分类", open:true},
            Map<String,Object> item = Maps.newHashMap();
            item.put("id",organCustom.getOrgId());
            item.put("pId",organCustom.getParentId());
            item.put("name",organCustom.getOrgName());
            item.put("open",true);
            data.add(item);
//
        }
        return ServerResponse.createBySuccess(data);
    }

    @Override
    public DataTableVo<OrganCustom> queryObjsByPage(OrganQueryVo entityQueryVo) {
        SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
        SysDictCustom condition = new SysDictCustom();

        sysDictQueryVo.getIsNoLike().put("dictType",true);

        condition.setDictType(Const.Dict.Organ.ORG_TYPE);
        condition.setRecordStatus(SysConst.RecordStatus.ABLE);

        sysDictQueryVo.setSysDictCustom(condition);
        List<SysDictCustom> sysDictCustoms = sysDictMapper.selectListByQueryVo(sysDictQueryVo);
        //类型
        Map<String,String> orgTypeMap = Maps.newHashMap();
        for(int i = 0,len = sysDictCustoms.size(); i < len; i++) {
            SysDictCustom sysDictCustom = sysDictCustoms.get(i);
            orgTypeMap.put(sysDictCustom.getDictCode(),sysDictCustom.getCodeName());
        }

        //数据封装
        DataTableVo<OrganCustom> dataTableVo = super.queryObjsByPage(entityQueryVo);
        List<OrganCustom> data = dataTableVo.getData();
        for(int i = 0,len = data.size(); i < len; i++) {
            OrganCustom organCustom = data.get(i);
            organCustom.setOrgType(orgTypeMap.get(organCustom.getOrgType()));
        }
        return dataTableVo;
    }

}
