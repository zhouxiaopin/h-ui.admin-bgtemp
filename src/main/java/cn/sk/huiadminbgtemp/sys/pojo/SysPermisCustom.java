package cn.sk.huiadminbgtemp.sys.pojo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 系统权限实体类的扩展类
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
//@AllArgsConstructor
public class SysPermisCustom extends SysPermis {

    public SysPermisCustom(Integer pId, String pFlag, String pName, String pUrl, Integer parentId, String pType, Integer pLevel, Integer pSort, String descri, Integer optId, String leftIcon, String expand1, String expand2, String expand3, String recordStatus, Date updateTime, Date createTime) {
        super(pId, pFlag, pName, pUrl, parentId, pType, pLevel, pSort, descri, optId, leftIcon, expand1, expand2, expand3, recordStatus, updateTime, createTime);
    }

}