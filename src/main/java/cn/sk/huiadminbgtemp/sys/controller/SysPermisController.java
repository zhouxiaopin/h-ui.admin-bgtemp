package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysPermisService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统权限 Controller
 */
@RestController
@RequestMapping("/sysPermis")
public class SysPermisController extends BaseController<SysPermisCustom, SysPermisQueryVo> {

    @Autowired
    private ISysPermisService sysPermisService;


    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysPermis/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysPermisQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "sysPermis";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "sysPermis";
        }
        return super.getPage(oprt);
    }

    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<SysPermisCustom> updateRecordStatus(SysPermisCustom sysPermisCustom) {
        String rs = sysPermisCustom.getRecordStatus();
        ServerResponse<SysPermisCustom> serverResponse = sysPermisService.update(sysPermisCustom);
        if (serverResponse.isSuccess()) {
            if (StringUtils.equals(rs, Const.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用成功");
            } else if (StringUtils.equals(rs, Const.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用成功");
            }
        } else {
            if (StringUtils.equals(rs, Const.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用失败");
            } else if (StringUtils.equals(rs, Const.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用失败");
            }
        }
        return serverResponse;
    }


    //参数检验
    @Override
    protected ServerResponse<SysPermisCustom> paramValidate(String oprt, SysPermisCustom sysPermisCustom) {
        switch (oprt) {
            case ADD_OPRT://添加
//                if (StringUtils.isEmpty(sysRoleCustom.getRoleFlag())||StringUtils.isEmpty(sysRoleCustom.getRoleName())) {
//                    return ServerResponse.createByParamError();
//                }
                //默认可用
                sysPermisCustom.setRecordStatus(Const.RecordStatus.ABLE);
                break;
        }
        return super.paramValidate(oprt, sysPermisCustom);
    }
}
