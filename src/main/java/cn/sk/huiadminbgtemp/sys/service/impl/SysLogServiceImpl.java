package cn.sk.huiadminbgtemp.sys.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.sys.mapper.SysLogMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysLogCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysLogQueryVo;
import cn.sk.huiadminbgtemp.sys.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统日志逻辑接口实现类
 */
@Service
public class SysLogServiceImpl extends BaseServiceImpl<SysLogCustom, SysLogQueryVo> implements ISysLogService {
    @Autowired
    private SysLogMapper sysLogMapper;



}
