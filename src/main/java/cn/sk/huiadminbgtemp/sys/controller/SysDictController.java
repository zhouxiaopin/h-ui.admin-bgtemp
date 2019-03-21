package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统数字字典 Controller
 */
@RestController
@RequestMapping("/sysDict")
public class SysDictController extends BaseController<SysDictCustom, SysDictQueryVo> {

    @Autowired
    private ISysDictService sysDictService;


    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysDict/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysDictQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "sysDict";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "sysDict";
        }
        return super.getPage(oprt);
    }



    //参数检验
    @Override
    protected ServerResponse<SysDictCustom> paramValidate(String oprt, SysDictCustom sysDictCustom) {
        switch (oprt) {
            case ADD_OPRT://添加
                //默认可用
//                sysDictCustom.setRecordStatus(Const.RecordStatus.ABLE);
//                状态 0=停用，1=启用
                sysDictCustom.setDictStatus("1");
                //是否删除 1=删除
                sysDictCustom.setDeleteFlag("0");
                break;

        }
        return super.paramValidate(oprt, sysDictCustom);
    }

}
