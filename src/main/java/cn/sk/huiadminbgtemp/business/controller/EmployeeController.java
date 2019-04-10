package cn.sk.huiadminbgtemp.business.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.business.common.Const;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.business.service.IEmployeeService;
import cn.sk.huiadminbgtemp.business.service.IFileService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.common.SysConst;
import cn.sk.huiadminbgtemp.sys.utils.PoiExcelUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * 员工信息 Controller
 */
@RestController
@RequestMapping("/emp")
@RequiresAuthentication
public class EmployeeController extends BaseController<EmployeeCustom, EmployeeQueryVo> {
    private static final String UPDATE_RECORDSTATUS_OPRT = "updateRecordStatus";
    private static final String IMPORT_DATA_OPRT = "importData";

    @Autowired
    private IEmployeeService employeeService;
    @Autowired
    private IFileService fileService;



    //更新记录状态，禁用启用切换
    @PostMapping(value = "updateRecordStatus")
    public ServerResponse<EmployeeCustom> updateRecordStatus(EmployeeCustom employeeCustom) {
        //权限校验
        authorityValidate(UPDATE_RECORDSTATUS_OPRT);

        String rs = employeeCustom.getRecordStatus();
        ServerResponse<EmployeeCustom> serverResponse = employeeService.update(employeeCustom);
        if (serverResponse.isSuccess()) {
            if (StringUtils.equals(rs, SysConst.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用成功");
            } else if (StringUtils.equals(rs, SysConst.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用成功");
            }
        } else {
            if (StringUtils.equals(rs, SysConst.RecordStatus.ABLE)) {
                serverResponse.setMsg("启用失败");
            } else if (StringUtils.equals(rs, SysConst.RecordStatus.DISABLE)) {
                serverResponse.setMsg("禁用失败");
            }
        }
        return serverResponse;
    }

    //下载文件
//    @PostMapping(value = "downFile")
    @GetMapping(value = "downFile")
    public void downFile(String realPath) {
        fileService.downFile(realPath);
    }

    //导出数据
    @GetMapping(value = "exportData")
    public void exportData() {
//        fileService.exportData();
        employeeService.exportData();
    }
    //进入导入数据页面
    @GetMapping(value = "/initImportData")
    public ModelAndView initImportData(ModelAndView model){
        authorityValidate(IMPORT_DATA_OPRT);
        try {
            model.addObject(OPRT_KEY, IMPORT_DATA_OPRT);
            model.addObject("msg", SysConst.ResponseMsg.OPRT_SUCCE);
        } catch (Exception e) {
            model.addObject("msg", SysConst.ResponseMsg.OPRT_FAIL);
        }
        model.setViewName(page(IMPORT_DATA_OPRT));
        return model;
    }
    //导入数据
    @PostMapping(value = "/importData")
    public ModelAndView importData(@RequestParam(value = "importFile", required = false) MultipartFile file){
        authorityValidate(IMPORT_DATA_OPRT);
        Map<String,String> titleMap = new HashMap<String,String>();
        titleMap.put("姓名", "empName");
        titleMap.put("员工编号", "empNo");
        titleMap.put("机构id", "orgId");
        titleMap.put("所属部门", "departName");
        titleMap.put("工卡", "cardNo");
        titleMap.put("手机电话", "phone");
        titleMap.put("微信号", "wechatNum");
        titleMap.put("身份证", "idcard");
        titleMap.put("民族", "nation");
        titleMap.put("职位", "post");
        titleMap.put("政治面貌", "politicalStatus");
        titleMap.put("学历", "qualification");
        titleMap.put("电子证件照", "identifPhotoPath");
        Map<String,Object> datas1 = PoiExcelUtil.readExcelHasPic(file,titleMap,new HashMap<>());
        Map<String,Object> datas2 = PoiExcelUtil.readExcel(file,titleMap,new HashMap<>());
//        List<Object[]> data = JxlExcelUtil.readExcel(file);
        System.out.println(datas1);
        System.out.println(datas2);
        return null;
    }



    /****************************以下是重新父类的方法*****************************/

    //根据oprt返回对应的页面
    @Override
    protected String getPage(String oprt) {
        String prefix = "business/employee/";
        if (oprt.equals(QUERY_OPRT)) {
            return prefix + "employeeQuery";
        }
        if (oprt.equals(UPDATE_OPRT)) {
            return prefix + "employee";
        }
        if (oprt.equals(ADD_OPRT)) {
            return prefix + "employee";
        }
        if (oprt.equals(IMPORT_DATA_OPRT)) {
            return prefix + "empImport";
        }
        return super.getPage(oprt);
    }

    //参数检验
    @Override
    protected ServerResponse<EmployeeCustom> paramValidate(String oprt, EmployeeCustom employeeCustom) {
        switch (oprt) {
            case ADD_OPRT://添加

                //默认可用
                employeeCustom.setRecordStatus(SysConst.RecordStatus.ABLE);
                break;
        }
        return super.paramValidate(oprt, employeeCustom);
    }

    //权限校验
    @Override
    protected void authorityValidate(String oprt) {
        switch (oprt) {
            case ADD_OPRT://添加
//                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.ADD);
                break;
            case UPDATE_RECORDSTATUS_OPRT://修改记录状态（禁用/启用）
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.UPDATE_RECORDSTATUS);
                break;
            case UPDATE_OPRT://修改
//                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.UPDATE);
                break;
            case DEL_OPRT://删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.DEL);
                break;
            case REAL_DEL_OPRT://硬删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.REAL_DEL);
                break;
            case BATCH_DEL_OPRT://批量删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.BATCH_DEL);
                break;
            case BATCH_REAL_DEL_OPRT://批量硬删除
                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.BATCH_REAL_DEL);
                break;

            case IMPORT_DATA_OPRT://导入数据
//                SecurityUtils.getSubject().checkPermission(Const.ShiroPermis.Employee.IMPORT_DATA);
                break;
        }
    }

}