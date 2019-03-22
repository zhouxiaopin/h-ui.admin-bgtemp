package cn.sk.huiadminbgtemp.base.controller;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.CustomException;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysDictService;
import cn.sk.huiadminbgtemp.sys.utils.FastJsonUtil;
import cn.sk.huiadminbgtemp.sys.vo.DataTableVo;
import cn.sk.huiadminbgtemp.sys.vo.SelectBoxVo;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

public class BaseController<T, V> {
    @Autowired
    private IBaseService<T, V> baseService;
    @Autowired
    private ISysDictService sysDictService;

    protected static final String OPRT_KEY = "oprt";
    protected static final String QUERY_OPRT = "query";
    protected static final String ADD_OPRT = "add";
    protected static final String UPDATE_OPRT = "update";
    protected static final String QUERYDETAIL_OPRT = "queryDetail";

    protected String getPage(String oprt) {
        return null;
    }

    //    protected ServerResponse<T> addBefore(T t){return null;}
    protected ServerResponse<T> updateBefore(T oldObj, T t) {
        return null;
    }

    //参数检验
    protected ServerResponse<T> paramValidate(String oprt, T t) {
        return ServerResponse.createBySuccessMessage("检验成功");
    }

    /**
     * 获取页面
     *
     * @return 返回页面
     */
    protected String page(String oprt) {
        String page = getPage(oprt);
        if (null == page) {
            throw new CustomException(Const.ResponseMsg.NO_PAGE);
        }
        return page;
    }


    @GetMapping(value = "/initQuery")
    public ModelAndView initQuery(ModelAndView model) throws Exception {
        model.addObject(OPRT_KEY, QUERY_OPRT);
        model.addObject(Const.Dict.RECORDSTATUS_DICTCODE,
                querySelectBoxVoByDictType(Const.Dict.RECORDSTATUS_DICTCODE).getData());

        model.setViewName(page(QUERY_OPRT));
        return model;
    }

    @GetMapping(value = "/initAdd")
    public ModelAndView initAdd(ModelAndView model, T t) throws Exception {
        try {
            model.addObject("obj", t);
            model.addObject(OPRT_KEY, ADD_OPRT);
            model.addObject("msg", Const.ResponseMsg.OPRT_SUCCE);
        } catch (Exception e) {
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(ADD_OPRT));
        return model;
    }

    @GetMapping(value = "/initUpdate")
    public ModelAndView initUpdate(ModelAndView model, T entity) throws Exception {
        model.addObject(OPRT_KEY, UPDATE_OPRT);
        try {
            init(model, entity);
        } catch (Exception e) {
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(UPDATE_OPRT));
        return model;
    }

    @GetMapping(value = "/initQueryDetail")
    public ModelAndView queryDetail(ModelAndView model, T entity) throws Exception {
        model.addObject(OPRT_KEY, QUERYDETAIL_OPRT);
        try {
            init(model, entity);
        } catch (Exception e) {
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(QUERYDETAIL_OPRT));
        return model;
    }

    @PostMapping(value = "/add")
    public ServerResponse<T> add(T t) throws Exception {
        ServerResponse<T> serverResponse = paramValidate(ADD_OPRT, t);
        if (null == serverResponse || serverResponse.isSuccess()) {
            return baseService.insert(t);
        } else {
            return serverResponse;
        }
    }

    @PostMapping(value = "/update")
    public ServerResponse<T> update(T t) throws Exception {
        ServerResponse<T> sr = paramValidate(UPDATE_OPRT, t);
        if (null != sr&&!sr.isSuccess()) {
            return sr;
        }

        T obj = getObj(t);

        ServerResponse<T> serverResponse = updateBefore(obj, t);
        if (null == serverResponse || serverResponse.isSuccess()) {
//            return  baseService.update(obj);
            return baseService.update(t);
        } else {
            return serverResponse;
        }
    }

    //软删除
    @PostMapping(value = "/delete")
    public ServerResponse<T> delete(@RequestParam("ids[]") String[] ids) throws Exception {
        return baseService.deleteInIds(ids);

    }
    //硬删除
    @PostMapping(value = "/realDelete")
    public ServerResponse<T> realDelete(@RequestParam("ids[]") String[] ids) throws Exception {
        return baseService.realDeleteInIds(ids);

    }

    @PostMapping(value = "/query")
    public DataTableVo list(V v) {
        return baseService.queryObjsByPage(v);
    }
    @PostMapping(value = "/queryAllByCondition")
    public ServerResponse<List<T>> queryAllByCondition(V v) {
        return baseService.queryObjs(v);
    }

    protected void init(ModelAndView model, T entity) {
        try {
            T t = getObj(entity);
            if (null != t) {
                model.addObject("obj", t);
//                model.addAttribute("jsonObj", GsonUtils.objToJsonStr(t));
                model.addObject("jsonObj", FastJsonUtil.obj2String(t));
                model.addObject("msg", Const.ResponseMsg.OPRT_SUCCE);
            } else {
                model.addObject("msg", Const.ResponseMsg.RECORD_EXISTS_NO);
            }
        } catch (Exception e) {
            model.addObject("msg", Const.ResponseMsg.OPRT_FAIL);
        }
    }

    //根据主键获取实体对象
    protected T getObj(T entity) {
        T t = null;
        try {
            t = baseService.queryObj(entity).getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }

    //获取下拉框

    @PostMapping(value = "/querySelectBoxVoByDictType")
    public ServerResponse<List<SelectBoxVo>> querySelectBoxVoByDictType(String dictType) {
        SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
        SysDictCustom condition = new SysDictCustom();

        sysDictQueryVo.getIsNoLike().put("dictType",true);

        condition.setDictType(dictType);
        condition.setRecordStatus(Const.RecordStatus.ABLE);

        sysDictQueryVo.setSysDictCustom(condition);
        ServerResponse<List<SysDictCustom>> sr = sysDictService.queryObjs(sysDictQueryVo);
        List<SysDictCustom> data = sr.getData();
        List<SelectBoxVo> selectBoxVos = Lists.newArrayList();
        for (int i = 0,len = data.size(); i < len; i++){
            SysDictCustom s = data.get(i);
            SelectBoxVo selectBoxVo = new SelectBoxVo(s.getDictCode(),s.getCodeName());
            selectBoxVos.add(selectBoxVo);
        }
        return ServerResponse.createBySuccess(selectBoxVos);
    }
}
