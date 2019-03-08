package cn.sk.huiadminbgtemp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TestController {
    //乘量分布
    @GetMapping("/toLogin")
    public ModelAndView transferDistr(ModelAndView mv){
//        mv.setViewName("login");
        mv.setViewName("common/index");
        return mv;
    }
    //乘量分布
    @GetMapping("/toWelcome")
    public ModelAndView toWelcome(ModelAndView mv){
//        mv.setViewName("login");
        mv.setViewName("common/welcome");
        return mv;
    }
}
