package cn.sk.huiadminbgtemp.business.controller;

import cn.sk.huiadminbgtemp.base.controller.BaseController;
import cn.sk.huiadminbgtemp.business.common.Const;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.business.service.IEmployeeService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.common.SysConst;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.UUID;

/**
 * 员工信息 Controller
 */
@RestController
@RequestMapping("/emp")
@RequiresAuthentication
@Slf4j
public class EmployeeController extends BaseController<EmployeeCustom, EmployeeQueryVo> {
    private static final String UPDATE_RECORDSTATUS_OPRT = "updateRecordStatus";
    @Autowired
    private IEmployeeService employeeService;



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
    public void downFile(String realPath,HttpServletResponse response) {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        try {
            String resourceLocation = "classpath:"+SysConst.DOWNLOAD_FILE_PREFIX+realPath;
            if (ResourceUtils.isUrl(resourceLocation)) {
                //获取文件
                File file = ResourceUtils.getFile(resourceLocation);
                //文件扩展名
                String fileExtensionName = realPath.substring(realPath.lastIndexOf(".")+1);
                // 文件的默认保存名
                String fileName = UUID.randomUUID().toString()+"."+fileExtensionName;
                // 读到流中
                inputStream = new FileInputStream(file);
                // 设置输出的格式
                response.reset();
                response.setContentType("bin");
                response.addHeader("Content-Disposition",
                        "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
                // 循环取出流中的数据
                byte[] b = new byte[200];
                int len;
                outputStream = response.getOutputStream();
                while ((len = inputStream.read(b)) != -1){
                    outputStream.write(b, 0, len);
                }

            }else{
                log.error("路径不存在");
            }

        } catch (IOException e) {
            e.printStackTrace();
            log.error("下载失败");
        }finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

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
        }
    }

}
