package cn.sk.huiadminbgtemp.sys.controller;

import cn.sk.huiadminbgtemp.sys.common.Const;
import cn.sk.huiadminbgtemp.sys.mapper.SysPermisMapper;
import cn.sk.huiadminbgtemp.sys.mapper.SysRoleMapper;
import cn.sk.huiadminbgtemp.sys.pojo.SysUserCustom;
import cn.sk.huiadminbgtemp.sys.pojo.TreeNode;
import cn.sk.huiadminbgtemp.sys.utils.SysUtils;
import cn.sk.huiadminbgtemp.sys.utils.TreeUtil;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import org.apache.commons.collections.CollectionUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestController
public class SysToPageController {
    @Autowired
    private SysRoleMapper sysRoleMapper;
    @Autowired
    private SysPermisMapper sysPermisMapper;

    @GetMapping("/index")
    public ModelAndView index(ModelAndView mv, HttpServletResponse response){
//        SysUserCustom sysUserInfo = (SysUserCustom)SecurityUtils.getSubject().getSession().getAttribute(Const.SessionKey.SYSUSER_INFO);
        SysUserCustom sysUserInfo = SysUtils.getSysUser();
        if(ObjectUtils.isEmpty(sysUserInfo)) {
            Subject currentUser = SecurityUtils.getSubject();

            if (currentUser.isAuthenticated()) {
                currentUser.logout();
            }
            try {
                response.sendRedirect("sysUser/initLogin");
                return null;
            } catch (IOException e) {
                e.printStackTrace();
                mv.setViewName("login");
            }
            return mv;
        }

        mv.addObject("sysUserInfo",sysUserInfo);
        //        SysUserCustom sysUserInfo = (SysUserCustom)SecurityUtils.getSubject().getPrincipal();

        Map<String,Object> params = Maps.newHashMap();
        params.put("userId",sysUserInfo.getuId());
        params.put("recordStatus",Const.RecordStatus.ABLE);
        List<Map<String,Object>> sysRoleCustoms = sysRoleMapper.selectListByUserId(params);

        Set<Integer> roleIds = Sets.newHashSet();
        Map<String,Object> sysRoleItem;
        if(!CollectionUtils.isEmpty(sysRoleCustoms)) {
            for (int i = 0, len = sysRoleCustoms.size(); i < len; i++){
                sysRoleItem = sysRoleCustoms.get(i);
                roleIds.add(Integer.valueOf(sysRoleItem.get("roleId").toString()));
            }
        }

        if(!CollectionUtils.isEmpty(sysRoleCustoms)) {
            params.clear();
            params.put("roleIds",roleIds);
            params.put("recordStatus", Const.RecordStatus.ABLE);
            params.put("pType", Const.Permis.MENU);
            params.put("orderBy", "p_sort");
            List<Map<String,Object>> sysPermisCustoms = sysPermisMapper.selectListByRoleId(params);
            List<TreeNode> treeNodes = Lists.newArrayList();
            Map<String,Object> sysPermisItem;
            TreeNode treeNode;
            for(int i = 0, len = sysPermisCustoms.size(); i < len; i++) {
                sysPermisItem = sysPermisCustoms.get(i);
                treeNode = new TreeNode();
                treeNode.setId(sysPermisItem.get("pId").toString());
                treeNode.setLevel(Integer.valueOf(sysPermisItem.get("pLevel").toString()));
                treeNode.setParentId(sysPermisItem.get("parentId").toString());
                treeNode.setName(sysPermisItem.get("pName").toString());
                Map<String,Object> attrs = Maps.newHashMap();
                attrs.put("leftIcon",sysPermisItem.get("leftIcon").toString());
                attrs.put("pUrl",sysPermisItem.get("pUrl").toString());
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
