package cn.sk.huiadminbgtemp.base.service.impl;

import cn.sk.huiadminbgtemp.base.mapper.IBaseMapper;
import cn.sk.huiadminbgtemp.base.pojo.BaseQueryVo;
import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.common.CustomException;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.vo.DataTableVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class BaseServiceImpl<T,V> implements IBaseService<T,V> {
    @Autowired
    protected IBaseMapper<T,V> baseMapper;


    @Override
    @Transactional(rollbackFor={CustomException.class, Exception.class})
    public ServerResponse<T> insert(T entityCustom) {
        ServerResponse serverResponse = insertBefore(entityCustom);
        if(!serverResponse.isSuccess()) {
            return serverResponse;
        }
        int num = baseMapper.insertSelective(entityCustom);
        if(num > 0) {
            return ServerResponse.createBySuccess(Const.ResponseMsg.ADD_SUCCE,entityCustom);
        }else {
            return ServerResponse.createByErrorMessage(Const.ResponseMsg.ADD_FAIL);
        }
    }

    //添加之前的操作
    protected ServerResponse<T> insertBefore(T t){
        return ServerResponse.createBySuccess(t);
    }

    @Override
    @Transactional(rollbackFor={CustomException.class, Exception.class})
    public ServerResponse<T> update(T entityCustom) {
        ServerResponse serverResponse = updateBefore(entityCustom);
        if(!serverResponse.isSuccess()) {
            return serverResponse;
        }

        int num = baseMapper.updateByPrimaryKeySelective(entityCustom);
        if(num > 0) {
            return ServerResponse.createBySuccess(Const.ResponseMsg.UPDATE_SUCCE,entityCustom);
        }else {
            return ServerResponse.createByErrorMessage(Const.ResponseMsg.UPDATE_FAIL);
        }
    }

    @Override
    @Transactional(rollbackFor={CustomException.class, Exception.class})
    public ServerResponse<T> deleteInIds(String[] ids) {
        int num = baseMapper.deleteInIds(ids,Const.RecordStatus.DELETE);
        if(num > 0) {
            return ServerResponse.createBySuccessMessage(Const.ResponseMsg.DELET_SUCCE);
        }else {
            return ServerResponse.createByErrorMessage(Const.ResponseMsg.DELET_FAIL);
        }
    }

    //修改之前的操作
    protected ServerResponse<T> updateBefore(T t){
        return ServerResponse.createBySuccess();
    }

    @Override
    @Transactional(rollbackFor={CustomException.class, Exception.class})
    public ServerResponse<T> delete(T entityCustom) {
        int num = baseMapper.deleteByPrimaryKey(entityCustom);
        if(num > 0) {
            return ServerResponse.createBySuccess(Const.ResponseMsg.DELET_SUCCE,entityCustom);
        }else {
            return ServerResponse.createByErrorMessage(Const.ResponseMsg.DELET_FAIL);
        }
    }

    @Override
    public ServerResponse<T> queryObj(T entityCustom) {
        T t = baseMapper.selectByPrimaryKey(entityCustom);
        if(null == t) {
            return ServerResponse.createByErrorMessage(Const.ResponseMsg.QUERY_FAIL);
        }
        return ServerResponse.createBySuccess(Const.ResponseMsg.QUERY_SUCCE,t);
    }

//    @Override
//    public ServerResponse<DataTableVo> queryObjsByPage(V entityQueryVo) {
//        //startPage--start
//        //填充自己的sql查询逻辑
//        //pageHelper-收尾
//        BaseQueryVo baseQueryVo = (BaseQueryVo)entityQueryVo;
//        PageHelper.startPage(baseQueryVo.getStart(),baseQueryVo.getLength());
//        List<T> list = baseMapper.selectListByQueryVo(entityQueryVo);
//
//        PageInfo pageResult = new PageInfo(list);
//
//        DataTableVo<T> dataTableVo = new DataTableVo();
//
//        dataTableVo.setDraw(baseQueryVo.getDraw());
//        dataTableVo.setRecordsTotal(pageResult.getTotal());
//        dataTableVo.setData(list);
//        return ServerResponse.createBySuccess(dataTableVo);
//    }
    @Override
    public DataTableVo queryObjsByPage(V entityQueryVo) {

        //startPage--start
        //填充自己的sql查询逻辑
        //pageHelper-收尾
        BaseQueryVo baseQueryVo = (BaseQueryVo)entityQueryVo;
//        PageHelper.startPage(baseQueryVo.getStart(),baseQueryVo.getLength());
        PageHelper.offsetPage(baseQueryVo.getStart(),baseQueryVo.getLength());
        List<T> list = baseMapper.selectListByQueryVo(entityQueryVo);

        PageInfo pageResult = new PageInfo(list);

        DataTableVo<T> dataTableVo = new DataTableVo();

        dataTableVo.setDraw(baseQueryVo.getDraw());
        dataTableVo.setRecordsTotal(pageResult.getTotal());
        dataTableVo.setRecordsFiltered(pageResult.getTotal());
        if(CollectionUtils.isEmpty(list)){
            dataTableVo.setData(Lists.newArrayList());
        }else{
            dataTableVo.setData(list);
        }


        return dataTableVo;
    }

}
