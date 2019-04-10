package cn.sk.huiadminbgtemp.business.service.impl;

import cn.sk.huiadminbgtemp.base.service.impl.BaseServiceImpl;
import cn.sk.huiadminbgtemp.business.mapper.EmployeeMapper;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeCustom;
import cn.sk.huiadminbgtemp.business.pojo.EmployeeQueryVo;
import cn.sk.huiadminbgtemp.business.service.IEmployeeService;
import cn.sk.huiadminbgtemp.business.service.IFileService;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

/**
 * 员工信息业务逻辑接口实现类
 */
@Service
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
