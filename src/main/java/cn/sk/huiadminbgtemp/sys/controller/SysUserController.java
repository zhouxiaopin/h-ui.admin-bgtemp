package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统用户 Controller
 */
@RestController
@RequestMapping("/sysUser")
public class SysUserController extends BaseController<SysUserCustom,SysUserQueryVo> {
    @Autowired
    private ISysUserService sysUserService;


    @Override
    protected String getPage(String oprt) {
        if(oprt.equals(QUERY_OPRT)) {
            return "sys/sysUser/sysUserQuery";
        }
        if(oprt.equals(ADD_OPRT)) {
            return "sys/sysUser/sysUser";
        }
        return super.getPage(oprt);
    }

    @Override
    protected ServerResponse<SysUserCustom> addBefore(SysUserCustom sysUserCustom) {
        if(!StringUtils.equals(sysUserCustom.getPassword(),sysUserCustom.getPassword2())) {
           return  ServerResponse.createByErrorMessage("两次密码输入不一致");
        }
        return super.addBefore(sysUserCustom);
    }
}
