package cn.sk.huiadminbgtemp.business.service;

import cn.sk.huiadminbgtemp.base.service.IBaseService;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * 员工信息业务逻辑接口
 */
public interface IEmployeeService extends IBaseService<EmployeeCustom, EmployeeQueryVo>{
    /**
     * 导出数据
     */
    void exportData();

    /**
     * 导入数据
     * @param file
     * @return
     */
    ServerResponse<Map<String,Object>> importData(MultipartFile file);

}
