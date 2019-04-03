package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysDictService;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 系统数字字典 Controller
 */
@RestController
@RequestMapping("/sysDict")
@RequiresAuthentication
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

    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<SysDictCustom> updateRecordStatus(SysDictCustom sysDictCustom) {
        String rs = sysDictCustom.getRecordStatus();
        ServerResponse<SysDictCustom> serverResponse = sysDictService.update(sysDictCustom);
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
    protected ServerResponse<SysDictCustom> paramValidate(String oprt, SysDictCustom sysDictCustom) {
        if(StringUtils.equals(oprt,ADD_OPRT)) {//添加
            //判断字典编码是否存在
            SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
            SysDictCustom condition = new SysDictCustom();

            sysDictQueryVo.getIsNoLike().put("dictType",true);

            condition.setDictType(sysDictCustom.getDictType());
            condition.setDictCode(sysDictCustom.getDictCode());

            sysDictQueryVo.setSysDictCustom(condition);
            ServerResponse<List<SysDictCustom>> serverResponse = this.queryAllByCondition(sysDictQueryVo);
            if(!CollectionUtils.isEmpty(serverResponse.getData())){
                return ServerResponse.createByErrorMessage("字典编码已存在");
            }

            //默认可用
            sysDictCustom.setRecordStatus(Const.RecordStatus.ABLE);
        }
        if(StringUtils.equals(oprt,UPDATE_OPRT)) {//修改
            //判断字典编码是否存在
            SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
            SysDictCustom condition = new SysDictCustom();

            sysDictQueryVo.getIsNoLike().put("dictType",true);

            condition.setDictType(sysDictCustom.getDictType());
            condition.setDictCode(sysDictCustom.getDictCode());

            sysDictQueryVo.setSysDictCustom(condition);
            ServerResponse<List<SysDictCustom>> serverResponse = this.queryAllByCondition(sysDictQueryVo);
            List<SysDictCustom> sysDictCustoms = serverResponse.getData();
            if(!CollectionUtils.isEmpty(sysDictCustoms)){
                for (int i = 0, len = sysDictCustoms.size(); i < len; i++){
                    if(sysDictCustom.getDictId() != sysDictCustoms.get(i).getDictId()) {
                        return ServerResponse.createByErrorMessage("字典编码已存在");
                    }
                }

            }
        }

        return super.paramValidate(oprt, sysDictCustom);
    }

}
