package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.mapper.SysDictMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysDictQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统数字字典业务逻辑接口实现类
 */
@Service
public class SysDictServiceImpl extends BaseServiceImpl<SysDictCustom,SysDictQueryVo> implements ISysDictService {
    @Autowired
    private SysDictMapper sysDictMapper;


}
