package cn.sk.huiadminbgtemp.business.mapper;

import cn.sk.huiadminbgtemp.base.mapper.IBaseMapper;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeMapper extends IBaseMapper<EmployeeCustom, EmployeeQueryVo> {
    //批量插入
    int batchInsert(List<EmployeeCustom> records);
}