package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.pojo.SysLogCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysLogQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统日志 Controller
 */
@RestController
@RequestMapping("/sysLog")
public class SysLogController extends BaseController<SysLogCustom, SysLogQueryVo> {

    @Autowired
    private ISysLogService sysLogService;


    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysLog/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysLogQuery";
        }
        return super.getPage(oprt);
    }

}
