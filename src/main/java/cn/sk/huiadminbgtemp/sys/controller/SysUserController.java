package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysUserService;
import cn.sk.huiadminbgtemp.sys.utils.ShiroUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统用户 Controller
 */
@RestController
@RequestMapping("/sysUser")
public class SysUserController extends BaseController<SysUserCustom, SysUserQueryVo> {

    private static final String UPDATE_PASSWORD_OPRT = "updatePassword";

    @Autowired
    private ISysUserService sysUserService;


    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysUser/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysUserQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "sysUser";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "sysUser";
        }
        if (oprt.equals(UPDATE_PASSWORD_OPRT)) {
            return prefix + "sysUser";
        }
        return super.getPage(oprt);
    }


    @Override
    protected ServerResponse<SysUserCustom> updateBefore(SysUserCustom oldObj, SysUserCustom sysUserCustom) {
        //判断是否有修改密码
        if (!StringUtils.equals(sysUserCustom.getPassword(), sysUserCustom.getPassword2())) {
            //判断盐值是否存在
            String salt = oldObj.getSalt();
            if (StringUtils.isEmpty(salt)) {
                salt = ShiroUtils.DEFALT_SALT;
                sysUserCustom.setSalt(salt);
            }
            sysUserCustom.setPassword(ShiroUtils.getMd5Pwd(salt, sysUserCustom.getPassword()));
        }
        return super.updateBefore(oldObj, sysUserCustom);
    }

    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<SysUserCustom> updateRecordStatus(SysUserCustom sysUserCustom) {
        String rs = sysUserCustom.getRecordStatus();
        ServerResponse<SysUserCustom> serverResponse = sysUserService.update(sysUserCustom);
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

    //进入修改密码页面
    @GetMapping(value = "/initUpdatePassword")
    public ModelAndView initUpdatePassword(ModelAndView model, SysUserCustom sysUserCustom) throws Exception {
        model.addObject(OPRT_KEY, UPDATE_PASSWORD_OPRT);
        try {
            init(model, sysUserCustom);
        } catch (Exception e) {
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(UPDATE_PASSWORD_OPRT));
        return model;
    }

    //修改密码
    //更新记录状态，禁用启用切换
    @PostMapping(value = "updatePassword")
    public ServerResponse<SysUserCustom> updatePassword(SysUserCustom sysUserCustom) {
        //参数检验
        ServerResponse sr = paramValidate(UPDATE_PASSWORD_OPRT, sysUserCustom);
        if (!sr.isSuccess()) {
            return sr;
        }

        //业务逻辑
        SysUserCustom oldObj = getObj(sysUserCustom);
        //判断盐值是否存在
        String salt = oldObj.getSalt();
        if (StringUtils.isEmpty(salt)) {
            salt = ShiroUtils.DEFALT_SALT;
            sysUserCustom.setSalt(salt);
        }
        sysUserCustom.setPassword(ShiroUtils.getMd5Pwd(salt, sysUserCustom.getPassword()));

        return sysUserService.update(sysUserCustom);
    }

    //参数检验
    @Override
    protected ServerResponse<SysUserCustom> paramValidate(String oprt, SysUserCustom sysUserCustom) {
        switch (oprt) {
            case ADD_OPRT://添加
                if (!StringUtils.equals(sysUserCustom.getPassword(), sysUserCustom.getPassword2())) {
                    return ServerResponse.createByErrorMessage("两次密码输入不一致");
                }
                break;
            case UPDATE_PASSWORD_OPRT://修改密码
                if (StringUtils.isEmpty(sysUserCustom.getPassword()) || StringUtils.isEmpty(sysUserCustom.getPassword2())) {
                    return ServerResponse.createByErrorMessage("密码不能为空");
                }
                if (!StringUtils.equals(sysUserCustom.getPassword(), sysUserCustom.getPassword2())) {
                    return ServerResponse.createByErrorMessage("两次密码输入不一致");
                }
                break;
        }
        return super.paramValidate(oprt, sysUserCustom);
    }

}
