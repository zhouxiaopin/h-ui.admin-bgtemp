package cn.sk.huiadminbgtemp.sys.common;

/**
 * 常量类
 */
public class Const {

    public interface RecordStatus{
        String DELETE = "00";//记录删除
        String ABLE = "01";//记录可用
        String DISABLE = "02";//记录禁用
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

    public interface Dict{
        String RECORDSTATUS_DICTCODE = "record_status";
    }

    public interface SessionKey{
        String SYSUSER_INFO = "sysUserInfo";
    }

    public interface Permis{
        //权限类型
        String MENU = "01";
        String BUTTON = "02";

        Integer DEFAULT_PARENTID = 0;
    }
    //shiro权限配置
    public interface ShiroPermis{
        //添加
        String ADD = "add";
        //修改
        String UPDATE = "update";
        //禁用启用
        String UPDATE_RECORDSTATUS = "updateRecordStatus";
        //删除
        String DEL = "del";
        //硬删除
        String REAL_DEL = "realDel";
        //批量删除
        String BATCH_DEL = "batchDel";
        //批量硬删除
        String BATCH_REAL_DEL = "batchRealDel";

        //系统用户
        class SysUser{
            public static final String SYSUSER = "sysUser";
            public static final String ADD = SYSUSER+":"+ShiroPermis.ADD;
            public static final String UPDATE = SYSUSER+":"+ShiroPermis.UPDATE;
            public static final String UPDATE_RECORDSTATUS = SYSUSER+":"+ShiroPermis.UPDATE_RECORDSTATUS;
            public static final String UPDATE_PSD = SYSUSER+":updatePsd";
            public static final String DEL = SYSUSER+":"+ShiroPermis.DEL;
            public static final String REAL_DEL = SYSUSER+":"+ShiroPermis.REAL_DEL;
            public static final String BATCH_DEL = SYSUSER+":"+ShiroPermis.BATCH_DEL;
            public static final String BATCH_REAL_DEL = SYSUSER+":"+ShiroPermis.BATCH_REAL_DEL;
        }

        //系统角色
        class SysRole{
            public static final String SYSROLE = "sysRole";
            public static final String ADD = SYSROLE+":"+ShiroPermis.ADD;
            public static final String UPDATE = SYSROLE+":"+ShiroPermis.UPDATE;
            public static final String UPDATE_RECORDSTATUS = SYSROLE+":"+ShiroPermis.UPDATE_RECORDSTATUS;
            public static final String DEL = SYSROLE+":"+ShiroPermis.DEL;
            public static final String REAL_DEL = SYSROLE+":"+ShiroPermis.REAL_DEL;
            public static final String BATCH_DEL = SYSROLE+":"+ShiroPermis.BATCH_DEL;
            public static final String BATCH_REAL_DEL = SYSROLE+":"+ShiroPermis.BATCH_REAL_DEL;
        }
    }

}
