package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysSqlConfCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysSqlConfQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysSqlConfService;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 系统sql语句配置 Controller
 */
@RestController
@RequestMapping("/sysSqlConf")
public class SysSqlConfController extends BaseController<SysSqlConfCustom, SysSqlConfQueryVo> {

    @Autowired
    private ISysSqlConfService sysSqlConfService;

    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "sys/sysSqlConf/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "sysSqlConfQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "sysSqlConf";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "sysSqlConf";
        }
        return super.getPage(oprt);
    }

    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<SysSqlConfCustom> updateRecordStatus(SysSqlConfCustom sysSqlConfCustom) {
        String rs = sysSqlConfCustom.getRecordStatus();
        ServerResponse<SysSqlConfCustom> serverResponse = sysSqlConfService.update(sysSqlConfCustom);
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
    protected ServerResponse<SysSqlConfCustom> paramValidate(String oprt, SysSqlConfCustom sysSqlConfCustom) {
        if(StringUtils.equals(oprt,ADD_OPRT)) {//添加
            //判断语句编码是否存在
            SysSqlConfQueryVo sysSqlConfQueryVo = new SysSqlConfQueryVo();
            SysSqlConfCustom condition = new SysSqlConfCustom();

            sysSqlConfQueryVo.getIsNoLike().put("dictType",true);

            condition.setScCode(sysSqlConfCustom.getScCode());

            sysSqlConfQueryVo.setSysSqlConfCustom(condition);
            ServerResponse<List<SysSqlConfCustom>> serverResponse = this.queryAllByCondition(sysSqlConfQueryVo);
            if(!CollectionUtils.isEmpty(serverResponse.getData())){
                return ServerResponse.createByErrorMessage("语句编码已存在");
            }

            //默认可用
            sysSqlConfCustom.setRecordStatus(Const.RecordStatus.ABLE);
        }
        if(StringUtils.equals(oprt,UPDATE_OPRT)) {//修改
            //判断语句编码是否存在
            SysSqlConfQueryVo sysSqlConfQueryVo = new SysSqlConfQueryVo();
            SysSqlConfCustom condition = new SysSqlConfCustom();

            sysSqlConfQueryVo.getIsNoLike().put("dictType",true);

            condition.setScCode(sysSqlConfCustom.getScCode());

            sysSqlConfQueryVo.setSysSqlConfCustom(condition);
            ServerResponse<List<SysSqlConfCustom>> serverResponse = this.queryAllByCondition(sysSqlConfQueryVo);
            List<SysSqlConfCustom> sysSqlConfCustoms = serverResponse.getData();
            if(!CollectionUtils.isEmpty(sysSqlConfCustoms)){
                for (int i = 0, len = sysSqlConfCustoms.size(); i < len; i++){
                    if(sysSqlConfCustom.getScId() != sysSqlConfCustoms.get(i).getScId()) {
                        return ServerResponse.createByErrorMessage("语句编码已存在");
                    }
                }
            }

            //判断字典编码是否存在
//            SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
//            SysDictCustom condition = new SysDictCustom();
//
//            sysDictQueryVo.getIsNoLike().put("dictType",true);
//
//            condition.setDictType(sysDictCustom.getDictType());
//            condition.setDictCode(sysDictCustom.getDictCode());
//
//            sysDictQueryVo.setSysDictCustom(condition);
//            ServerResponse<List<SysDictCustom>> serverResponse = this.queryAllByCondition(sysDictQueryVo);
//            List<SysDictCustom> sysDictCustoms = serverResponse.getData();
//            if(!CollectionUtils.isEmpty(sysDictCustoms)){
//                for (int i = 0, len = sysDictCustoms.size(); i < len; i++){
//                    if(sysDictCustom.getDictId() != sysDictCustoms.get(i).getDictId()) {
//                        return ServerResponse.createByErrorMessage("字典编码已存在");
//                    }
//                }
//
//            }
        }

        return super.paramValidate(oprt, sysSqlConfCustom);
    }

}
