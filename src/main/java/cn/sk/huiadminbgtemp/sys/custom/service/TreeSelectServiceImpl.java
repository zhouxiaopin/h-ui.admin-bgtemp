package cn.sk.huiadminbgtemp.sys.custom.service;


import cn.sk.huiadminbgtemp.business.common.Const;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.utils.HttpClientUtil;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 *@Deseription 树形下拉框业务逻辑接口实现类
 *@Author zhoucp
 *@Date 2019/7/8 17:05
 **/
@Service
@Slf4j
public class TreeSelectServiceImpl implements ITreeSelectService {

    @Override
    public ServerResponse<List<Map<String,Object>>> exeMethod(String methodName) {
        ServerResponse<List<Map<String,Object>>>  serverResponse = ServerResponse.createByError();
        switch (methodName){
            case "getEmpTree":
                serverResponse = getEmpTree();
                break;
        }
        return serverResponse;
    }

    @Override
    public ServerResponse<List<Map<String,Object>>> getEmpTree() {
        try {
            JSONObject jsonObject =  HttpClientUtil.sendPostJson("获取员工树形下拉框", Const.Url.Emp.EMP_TREESELECT, "");
            String code = jsonObject.getString("code");//接口请求成功200
            //            String status = jsonObject.getString("status");
            String msg = jsonObject.getString("msg");
            List data = jsonObject.getObject("data", List.class);
            if(StringUtils.equals("0",code)) {//请求成功
                return ServerResponse.createBySuccess(msg,data);
            }
            return ServerResponse.createByErrorMessage(msg);
        }catch (Exception e){
            log.error("获取员工树形下拉框:{}",e.getMessage());
            return ServerResponse.createByErrorMessage(e.getMessage());
        }

    }
}
