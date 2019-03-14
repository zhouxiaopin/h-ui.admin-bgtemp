package cn.sk.huiadminbgtemp.sys.common;

/**
 * 常量类
 */
public class Const {

    public interface RecordStatus{
        String DELETE = "00";
        String ABLE = "01";
        String DISABLE = "02";
    }

    public interface ResponseMsg{
        String OPRT_SUCCE = "操作成功";
        String ADD_SUCCE = "添加成功";
        String UPDATE_SUCCE = "修改成功";
        String DELET_SUCCE = "删除成功";
        String QUERY_SUCCE = "查询成功";

        String OPRT_FAIL = "操作失败";
        String ADD_FAIL = "添加失败";
        String UPDATE_FAIL = "修改失败";
        String DELET_FAIL = "删除失败";
        String QUERY_FAIL = "查询失败";
        String NO_PAGE = "没有配置页面";

        String RECORD_EXISTS_NO = "该记录不存在";

    }
}
