package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.mapper.SysPermisMapper;
import cn.sk.huiadminbgtemp.sys.mapper.SysRoleMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysPermisCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysRoleCustom;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.TreeNode;
import cn.sk.huiadminbgtemp.sys.utils.TreeUtil;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import org.apache.commons.collections.CollectionUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;
import java.util.Set;

@RestController
public class SysToPageController {
    @Autowired
    private SysRoleMapper sysRoleMapper;
    private SysPermisMapper sysPermisMapper;

    @GetMapping("/index")
    public ModelAndView gisDisplay(ModelAndView mv){
        SysUserCustom sysUserInfo = (SysUserCustom)SecurityUtils.getSubject().getPrincipals().getPrimaryPrincipal();

        Map<String,Object> params = Maps.newHashMap();
        params.put("userId",sysUserInfo.getuId());
        params.put("recordStatus",Const.RecordStatus.ABLE);
        List<SysRoleCustom> sysRoleCustoms = sysRoleMapper.selectListByUserId(params);

        Set<Integer> roleIds = Sets.newHashSet();
        SysRoleCustom sysRoleCustom;
        if(!CollectionUtils.isEmpty(sysRoleCustoms)) {
            for (int i = 0, len = sysRoleCustoms.size(); i < len; i++){
                sysRoleCustom = sysRoleCustoms.get(i);
                roleIds.add(sysRoleCustom.getRoleId());
            }
        }

        if(!CollectionUtils.isEmpty(sysRoleCustoms)) {
            params.clear();
            params.put("roleIds",roleIds);
            params.put("recordStatus", Const.RecordStatus.ABLE);
            params.put("pType", Const.Permis.MENU);
            params.put("orderBy", "p_sort");
            List<SysPermisCustom> sysPermisCustoms = sysPermisMapper.selectListByRoleId(params);
            List<TreeNode> treeNodes = Lists.newArrayList();
            SysPermisCustom sysPermisCustom;
            TreeNode treeNode;
            for(int i = 0, len = sysPermisCustoms.size(); i < len; i++) {
                sysPermisCustom = sysPermisCustoms.get(i);
                treeNode = new TreeNode();
                treeNode.setId(sysPermisCustom.getpId().toString());
                treeNode.setLevel(sysPermisCustom.getpLevel());
                treeNode.setParentId(sysPermisCustom.getParentId().toString());
                treeNode.setName(sysPermisCustom.getpName());
                Map<String,Object> attrs = Maps.newHashMap();
                attrs.put("leftIcon",sysPermisCustom.getLeftIcon());
                treeNode.setAttrs(attrs);

                treeNodes.add(treeNode);
            }
            treeNodes = TreeUtil.bulid(treeNodes,Const.Permis.DEFAULT_PARENTID.toString());
            mv.addObject("menuList", treeNodes);
        }

//        SecurityUtils.getSubject().
        mv.setViewName("common/index");
        return mv;
    }
}
