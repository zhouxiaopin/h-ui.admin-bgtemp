package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysRoleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统角色 Controller
 */
@RestController
@RequestMapping("/sysRole")
public class SysRoleController extends BaseController<SysRoleCustom, SysRoleQueryVo> {

    @Autowired
    private ISysRoleService sysRoleService;


    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysRole/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysRoleQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "sysRole";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "sysRole";
        }
        return super.getPage(oprt);
    }

    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<SysRoleCustom> updateRecordStatus(SysRoleCustom sysRoleCustom) {
        String rs = sysRoleCustom.getRecordStatus();
        ServerResponse<SysRoleCustom> serverResponse = sysRoleService.update(sysRoleCustom);
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
    protected ServerResponse<SysRoleCustom> paramValidate(String oprt, SysRoleCustom sysRoleCustom) {
        switch (oprt) {
            case ADD_OPRT://添加
                if (StringUtils.isEmpty(sysRoleCustom.getRoleFlag())||StringUtils.isEmpty(sysRoleCustom.getRoleName())) {
                    return ServerResponse.createByParamError();
                }
                //默认可用
                sysRoleCustom.setRecordStatus(Const.RecordStatus.ABLE);
                break;
        }
        return super.paramValidate(oprt, sysRoleCustom);
    }
}
