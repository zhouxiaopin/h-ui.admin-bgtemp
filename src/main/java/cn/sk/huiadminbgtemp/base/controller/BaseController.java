package cn.sk.huiadminbgtemp.base.controller;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.CustomException;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.utils.FastJsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

public class BaseController<T,V> {
    @Autowired
    private IBaseService<T,V> baseService;

    protected static final String OPRT_KEY = "oprt";
    protected static final String QUERY_OPRT = "query";
    protected static final String ADD_OPRT = "add";
    protected static final String UPDATE_OPRT = "update";
    protected static final String QUERYDETAIL_OPRT = "queryDetail";

    protected String getPage(String oprt){return null;}
    protected ServerResponse<T> addBefore(T t){return null;}
    protected ServerResponse<T> updateBefore(T t,T param){return null;}

    /**
     * 获取页面
     * @return 返回页面
     */
    protected String page(String oprt){
        String page = getPage(oprt);
        if(null == page) {
            throw new CustomException(Const.ResponseMsg.NO_PAGE);
        }
        return page;
    }


    @PostMapping(value = "/initQuery")
    public ModelAndView initQuery(ModelAndView model) throws Exception{
        model.addObject(OPRT_KEY,QUERY_OPRT);
        model.setViewName(page(QUERY_OPRT));
        return model;
    }
    @PostMapping(value = "/initAdd")
    public ModelAndView initAdd(ModelAndView model) throws Exception{
        try {
//            model.addAttribute("obj",t);
            model.addObject(OPRT_KEY,ADD_OPRT);
            model.addObject("msg", Const.ResponseMsg.OPRT_SUCCE);
        }catch (Exception e){
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(ADD_OPRT));
        return model;
    }
    @PostMapping
    public ModelAndView initUpdate(ModelAndView model, T entity) throws Exception{
        model.addObject(OPRT_KEY,UPDATE_OPRT);
        try {
            init(model,entity);
        }catch (Exception e){
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(UPDATE_OPRT));
        return model;
    }

    @PostMapping(value = "/initQueryDetail")
    public ModelAndView queryDetail(ModelAndView model, T entity) throws Exception{
        model.addObject(OPRT_KEY,QUERYDETAIL_OPRT);
        try {
            init(model,entity);
        }catch (Exception e){
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(QUERYDETAIL_OPRT));
        return model;
    }

    @PostMapping(value = "/add")
    public ServerResponse<T> add(Model model, T t) throws Exception{
        ServerResponse<T> serverResponse = addBefore(t);
        if(null == serverResponse||serverResponse.isSuccess()) {
            return baseService.insert(t);
        }else {
            return serverResponse;
        }
    }

    @PostMapping(value = "/update")
    public ServerResponse<T> update(Model model, T t) throws Exception{

        T obj = getObj(t);

        ServerResponse<T> serverResponse = updateBefore(obj,t);
        if(null == serverResponse||serverResponse.isSuccess()) {
            return  baseService.update(obj);
        }else {
            return serverResponse;
        }
    }
    //软删除
    @PostMapping(value = "/delete")
    public ServerResponse<T> delete(@RequestParam("ids[]") String[] ids) throws Exception{
        return baseService.updateInIds(ids);

    }


    protected void init(ModelAndView model, T entity){
        try {
            T t = getObj(entity);
            if(null != t) {
                model.addObject("obj",t);
//                model.addAttribute("jsonObj", GsonUtils.objToJsonStr(t));
                model.addObject("jsonObj", FastJsonUtil.obj2String(t));
                model.addObject("msg", Const.ResponseMsg.OPRT_SUCCE);
            }else{
                model.addObject("msg",Const.ResponseMsg.RECORD_EXISTS_NO);
            }
        }catch (Exception e){
            model.addObject("msg",Const.ResponseMsg.OPRT_FAIL);
        }
    }
    protected T getObj(T entity){
        T t = null;
        try {
            t = baseService.queryObj(entity).getData();
        }catch (Exception e){
            e.printStackTrace();
        }
        return t;
    }

}
