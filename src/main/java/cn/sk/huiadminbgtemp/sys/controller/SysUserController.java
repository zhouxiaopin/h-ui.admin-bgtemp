package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysUserService;
import cn.sk.huiadminbgtemp.sys.utils.ShiroUtils;
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
        String prefix = "sys/sysUser/";
        if(oprt.equals(QUERY_OPRT)) {
            return prefix+"sysUserQuery";
        }
        if(oprt.equals(UPDATE_OPRT)) {
            return prefix+"sysUser";
        }
        if(oprt.equals(ADD_OPRT)) {
            return prefix+"sysUser";
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

    @Override
    protected ServerResponse<SysUserCustom> updateBefore(SysUserCustom oldObj, SysUserCustom sysUserCustom) {
        //判断是否有修改密码
        if(!StringUtils.equals(sysUserCustom.getPassword(),sysUserCustom.getPassword2())) {
            //判断盐值是否存在
            String salt = oldObj.getSalt();
            if(StringUtils.isEmpty(salt)) {
                salt = ShiroUtils.DEFALT_SALT;
                sysUserCustom.setSalt(salt);
            }
            sysUserCustom.setPassword(ShiroUtils.getMd5Pwd(salt,sysUserCustom.getPassword()));
        }
        return super.updateBefore(oldObj, sysUserCustom);
    }

}
