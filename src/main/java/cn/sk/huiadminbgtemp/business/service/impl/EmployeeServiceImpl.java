package cn.sk.huiadminbgtemp.business.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.business.mapper.EmployeeMapper;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.business.service.IEmployeeService;
import cn.sk.huiadminbgtemp.business.service.IFileService;
import cn.sk.huiadminbgtemp.sys.common.ServerResponse;
import cn.sk.huiadminbgtemp.sys.common.SysConst;
import cn.sk.huiadminbgtemp.sys.utils.PoiExcelUtil;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * 员工信息业务逻辑接口实现类
 */
@Service
@Slf4j
public class EmployeeServiceImpl extends BaseServiceImpl<EmployeeCustom, EmployeeQueryVo> implements IEmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;
    @Autowired
    private IFileService fileService;

    @Autowired
    private HttpServletRequest request;

    @Override
    public void exportData() {
        try {
            List<EmployeeCustom> employeeCustoms = employeeMapper.selectListByQueryVo(new EmployeeQueryVo());


            String path = request.getSession().getServletContext().getRealPath("export");
            String[] title = new String[]{"员工编号","员工姓名"};
            int[] colWidth = new int[]{20,40};
            List<List<String>> datas = Lists.newArrayList();
            for(int i = 0,len = employeeCustoms.size(); i < len; i++) {
                EmployeeCustom employeeCustom = employeeCustoms.get(i);
                List<String> data = Lists.newArrayList();
                data.add(employeeCustom.getEmpNo());
                data.add(employeeCustom.getEmpName());
                datas.add(data);
            }

//        String resourceLocation = "classpath:"+ SysConst.DOWNLOAD_FILE_PREFIX+realPath;
//        if (ResourceUtils.isUrl(resourceLocation)) {
//            //获取文件
//            File file = ResourceUtils.getFile(resourceLocation);
//            FileUtils.exportFile(response, file, false);
//        OutputStream os, String[] title, int[] colWidth, List<java.util.List<String>> lists
            File fileDir = new File(path);
            if(!fileDir.exists()){
                fileDir.setWritable(true);
                fileDir.mkdirs();
            }
            String dowloadFileName = "员工数据.xls";
            File targetFile = new File(path,dowloadFileName);
//            if(!targetFile.exists()) {
//                targetFile.createNewFile();
//            }
            fileService.exportExcelData(targetFile,title,colWidth,datas);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public ServerResponse<Map<String,Object>> importData(MultipartFile file) {
        StringBuilder msg = new StringBuilder();
        //失败列表
        List<Map<String,String>> fList = Lists.newArrayList();
        //返回的数据map
        Map<String,Object> dataMap = Maps.newHashMap();
        try {
            Map<String,String> titleMap = Maps.newHashMap();
            titleMap.put("姓名", "empName");
            titleMap.put("员工编号", "empNo");
            titleMap.put("机构id", "orgId");
            titleMap.put("手机电话", "mobilePhone");
            titleMap.put("电子证件照", "headimg");
            //导入数据的公共属性
            Map<String,String> commonMap = Maps.newHashMap();
            commonMap.put("recordStatus", SysConst.RecordStatus.ABLE);
//        Map<String,Object> datas1 = PoiExcelUtil.readExcelHasPic(file,titleMap,new HashMap<>());
            //excel数据
            List<Map<String,String>> datas = (List<Map<String,String>>)PoiExcelUtil.readExcel(file,titleMap,commonMap).get("list");
            int totalNum = datas.size();
            msg.append("总记录[").append(totalNum).append("]");
            log.info("总条数:"+totalNum);
            //可以添加的列表
            List<EmployeeCustom> employeeCustoms = Lists.newArrayList();

            int num = 0;
            //导入成功记录数
            int successNum = 0;
            //是否可导入的标志，如果有一个手机电话或者姓名为空，则所有都不导入
            boolean flag = true;

            for(int i=0;i<totalNum;i++){
                Map<String,String> map = datas.get(i);
                String mobilePhone = map.get("mobilePhone").trim();
                if(StringUtils.isBlank(mobilePhone)){
                    map.put("msg", "手机电话为空");
                    fList.add(map);
                    flag = false;
                    break;
                }
            }
            if(flag) {
                for(int i = 0,len = totalNum; i < len; i++) {
                    Map<String,String> item = datas.get(i);
                    String empNo = item.get("empNo").trim();
                    if(StringUtils.isBlank(empNo)){
                        item.put("msg", "员工编号为空");
                        fList.add(item);
                        continue;
                    }

                    EmployeeCustom employeeCustom = new EmployeeCustom();
                    employeeCustom.setEmpNo(empNo);
                    employeeCustom.setEmpName(item.get("empName").trim());
                    employeeCustom.setOrgId(Integer.valueOf(item.get("orgId").trim()));
                    employeeCustom.setMobilePhone(item.get("mobilePhone").trim());
                    employeeCustom.setRecordStatus(item.get("recordStatus").trim());

                    employeeCustoms.add(employeeCustom);
                }

                successNum = employeeMapper.batchInsert(employeeCustoms);
            }

            msg.append(",成功导入条数[").append(successNum).append("]");
            msg.append(",失败[<font color='red'>").append(totalNum-successNum).append("</font>]记录如下：");
        }catch (Exception e){
            e.printStackTrace();
            msg.delete(0,msg.length());
            msg.append("xls格式错误或数据格式有误");
        }finally {
            dataMap.put("msg",msg.toString());
            dataMap.put("list",fList);
        }
        return ServerResponse.createBySuccess(dataMap);
    }

   /* //图片写出
    private String printImg(PictureData pic, String fileUploadPath) throws IOException {
        if(null == pic){
            return null;
        }
        File fileDir = new File(fileUploadPath);
        if(!fileDir.exists()){
            fileDir.setWritable(true);
            fileDir.mkdirs();
        }
        // 获取图片格式
        String fileExtensionName = pic.suggestFileExtension();
        String uploadFileName = UUID.randomUUID().toString()+"."+fileExtensionName;
        byte[] data = pic.getData();

        log.info("开始上传文件,新文件名:{"+uploadFileName+"}");
        File targetFile = new File(fileUploadPath,uploadFileName);
        //图片保存路径
        FileOutputStream out = new FileOutputStream(targetFile);
        out.write(data);
        out.close();
        return targetFile.getName();
    }*/

    /*@Override
    public DataTableVo<OrganCustom> queryObjsByPage(OrganQueryVo entityQueryVo) {
        SysDictQueryVo sysDictQueryVo = new SysDictQueryVo();
        SysDictCustom condition = new SysDictCustom();

        sysDictQueryVo.getIsNoLike().put("dictType",true);

        condition.setDictType(Const.Dict.Organ.ORG_TYPE);
        condition.setRecordStatus(SysConst.RecordStatus.ABLE);

        sysDictQueryVo.setSysDictCustom(condition);
        List<SysDictCustom> sysDictCustoms = sysDictMapper.selectListByQueryVo(sysDictQueryVo);
        //类型
        Map<String,String> orgTypeMap = Maps.newHashMap();
        for(int i = 0,len = sysDictCustoms.size(); i < len; i++) {
            SysDictCustom sysDictCustom = sysDictCustoms.get(i);
            orgTypeMap.put(sysDictCustom.getDictCode(),sysDictCustom.getCodeName());
        }

        //数据封装
        DataTableVo<OrganCustom> dataTableVo = super.queryObjsByPage(entityQueryVo);
        List<OrganCustom> data = dataTableVo.getData();
        for(int i = 0,len = data.size(); i < len; i++) {
            OrganCustom organCustom = data.get(i);
            organCustom.setOrgType(orgTypeMap.get(organCustom.getOrgType()));
        }
        return dataTableVo;
    }*/

}
