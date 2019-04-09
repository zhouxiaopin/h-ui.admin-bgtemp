package cn.sk.huiadminbgtemp.business.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.business.mapper.EmployeeMapper;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.business.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 员工信息业务逻辑接口实现类
 */
@Service
public class EmployeeServiceImpl extends BaseServiceImpl<EmployeeCustom, EmployeeQueryVo> implements IEmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;



    /*@Override
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
    }*/

}
