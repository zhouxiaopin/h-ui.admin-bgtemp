package cn.sk.huiadminbgtemp.business.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.business.common.Const;
import cn.sk.huiadminbgtemp.business.pojo.OrganCustom;
import cn.sk.huiadminbgtemp.business.pojo.OrganQueryVo;
import cn.sk.huiadminbgtemp.business.service.IOrganService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.common.SysConst;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 机构信息 Controller
 */
@RestController
@RequestMapping("/organ")
@RequiresAuthentication
public class OrganController extends BaseController<OrganCustom, OrganQueryVo> {
    private static final String UPDATE_RECORDSTATUS_OPRT = "updateRecordStatus";
    @Autowired
    private IOrganService organService;



    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<OrganCustom> updateRecordStatus(OrganCustom organCustom) {
        //权限校验
        authorityValidate(UPDATE_RECORDSTATUS_OPRT);

        String rs = organCustom.getRecordStatus();
        ServerResponse<OrganCustom> serverResponse = organService.update(organCustom);
        if (serverResponse.isSuccess()) {
            if (StringUtils.equals(rs, SysConst.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用成功");
            } else if (StringUtils.equals(rs, SysConst.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用成功");
            }
        } else {
            if (StringUtils.equals(rs, SysConst.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用失败");
            } else if (StringUtils.equals(rs, SysConst.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用失败");
            }
        }
        return serverResponse;
    }

    //获取树形
    @PostMapping(value = "queryOrganTree")
    public ServerResponse<List<Map<String,Object>>> queryOrganTree(OrganQueryVo organQueryVo) {
        return organService.queryOrganTree(organQueryVo);
    }


    /****************************以下是重新父类的方法*****************************/

    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "business/organ/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "organQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "organ";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "organ";
        }
        return super.getPage(oprt);
    }

    //参数检验
    @Override
    protected ServerResponse<OrganCustom> paramValidate(String oprt, OrganCustom organCustom) {
        switch (oprt) {
            case ADD_OPRT://添加
//                if (StringUtils.isEmpty(sysRoleCustom.getRoleFlag())||StringUtils.isEmpty(sysRoleCustom.getRoleName())) {
//                    return ServerResponse.createByParamError();
//                }

                if(ObjectUtils.isEmpty(organCustom.getParentId())) {
                    organCustom.setParentId(Const.DEFAULT_PARENTID);
                }
                //默认可用
                organCustom.setRecordStatus(SysConst.RecordStatus.ABLE);
                break;
        }
        return super.paramValidate(oprt, organCustom);
    }

    //权限校验
    @Override
    protected void authorityValidate(String oprt) {
        switch (oprt) {
            case ADD_OPRT://添加
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.ADD);
                break;
            case UPDATE_RECORDSTATUS_OPRT://修改记录状态（禁用/启用）
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.UPDATE_RECORDSTATUS);
                break;
            case UPDATE_OPRT://修改
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.UPDATE);
                break;
            case DEL_OPRT://删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.DEL);
                break;
            case REAL_DEL_OPRT://硬删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.REAL_DEL);
                break;
            case BATCH_DEL_OPRT://批量删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.BATCH_DEL);
                break;
            case BATCH_REAL_DEL_OPRT://批量硬删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Organ.BATCH_REAL_DEL);
                break;
        }
    }

}
