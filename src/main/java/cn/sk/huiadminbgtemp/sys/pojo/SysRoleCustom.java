package cn.sk.huiadminbgtemp.sys.pojo;

import lombok.*;

import java.util.Date;

/**
 * 系统角色实体类的扩展类
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SysRoleCustom extends SysRole {
    //权限ID
    private String permisIds;
    //旧权限ID
    private String oldPermisIds;

    public SysRoleCustom(Integer roleId, String roleFlag, String roleName, String descri, Integer optId, String recordStatus, Date updateTime, Date createTime) {
        super(roleId, roleFlag, roleName, descri, optId, recordStatus, updateTime, createTime);
    }
}