package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.mapper.SysSqlConfMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysSqlConfCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysSqlConfQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysSqlConfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统sql语句配置业务逻辑接口实现类
 */
@Service
public class SysSqlConfServiceImpl extends BaseServiceImpl<SysSqlConfCustom, SysSqlConfQueryVo> implements ISysSqlConfService {
    @Autowired
    private SysSqlConfMapper sysSqlConfMapper;


}
