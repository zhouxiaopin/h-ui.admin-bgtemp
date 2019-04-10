package cn.sk.huiadminbgtemp.business.common;

import cn.sk.huiadminbgtemp.sys.common.SysConst;

/**
 * 常量类
 */
public class Const {

    //树形默认父id
    public static final int DEFAULT_PARENTID = 0;

    //字典类型
    public interface Dict{
        //机构
        class Organ{
            //类型
            public static final String ORG_TYPE = "org_type";
        }

    }

    //shiro权限配置
    public interface ShiroPermis{
        //机构信息
        class Organ{
            public static final String MODEL_NAME = "organ";
            public static final String ADD = MODEL_NAME+":"+ SysConst.ShiroPermis.ADD;
            public static final String UPDATE = MODEL_NAME+":"+ SysConst.ShiroPermis.UPDATE;
            public static final String UPDATE_RECORDSTATUS = MODEL_NAME+":"+ SysConst.ShiroPermis.UPDATE_RECORDSTATUS;
            public static final String DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.DEL;
            public static final String REAL_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.REAL_DEL;
            public static final String BATCH_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.BATCH_DEL;
            public static final String BATCH_REAL_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.BATCH_REAL_DEL;
        }
        //员工信息
        class Employee{
            public static final String MODEL_NAME = "employee";
            public static final String ADD = MODEL_NAME+":"+ SysConst.ShiroPermis.ADD;
            public static final String UPDATE = MODEL_NAME+":"+ SysConst.ShiroPermis.UPDATE;
            public static final String UPDATE_RECORDSTATUS = MODEL_NAME+":"+ SysConst.ShiroPermis.UPDATE_RECORDSTATUS;
            public static final String DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.DEL;
            public static final String REAL_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.REAL_DEL;
            public static final String BATCH_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.BATCH_DEL;
            public static final String BATCH_REAL_DEL = MODEL_NAME+":"+ SysConst.ShiroPermis.BATCH_REAL_DEL;
            public static final String IMPORT_DATA = MODEL_NAME+":importData";
        }


    }

}
