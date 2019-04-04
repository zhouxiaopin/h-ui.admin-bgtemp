window.skConst = {};
//默认时间格式
skConst.DEFALT_DATE_FORMAT = 'YYYY-MM-DD HH:mm:ss';

//记录状态相关
skConst.RecordStatus = {
    DELETE:'00',//记录删除
    ABLE:'01',//记录可用
    DISABLE:'02',//记录禁用

    '00':'已删除',//记录删除
    '01':'已启用',//记录可用
    '02':'已禁用',//记录禁用
};


//数字字典相关
skConst.Dict = {
    RECORDSTATUS_DICTCODE:'record_status',//记录删除
};

//操作相关
skConst.Oprt = {
    QUERY_OPRT : "query",
    ADD_OPRT : "add",
    UPDATE_OPRT : "update",
    QUERYDETAIL_OPRT : "queryDetail",
    DEL_OPRT : "del",
    REAL_DEL_OPRT : "realDel",
    BATCH_DEL_OPRT : "batchDel",
    BATCH_REAL_DEL_OPRT : "batchRealDel",
    UPDATE_RECORDSTATUS_OPRT : "updateRecordStatus",
    SysUser:{
        UPDATE_PASSWORD_OPRT : "updatePassword"
    }
};
