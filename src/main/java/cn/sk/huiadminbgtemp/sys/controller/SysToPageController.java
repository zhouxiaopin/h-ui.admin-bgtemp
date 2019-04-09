package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.sys.service.ISysToPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;

@RestController
public class SysToPageController {
    @Autowired
    private ISysToPageService sysToPageService;

    @GetMapping("/index")
    public ModelAndView index(ModelAndView mv, HttpServletResponse response){
//        SysUserCustom sysUserInfo = (SysUserCustom)SecurityUtils.getSubject().getSession().getAttribute(Const.SessionKey.SYSUSER_INFO);
        return sysToPageService.index(mv,response);
    }
}
