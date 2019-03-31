package cn.sk.huiadminbgtemp.sys.shiro;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {
    public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
        LinkedHashMap<String, String> map = new LinkedHashMap<>();

        map.put("/static/**", "anon");
        map.put("/sysUser/login", "anon");
//        map.put("/shiro/login", "anon");
        map.put("/sysUser/logout", "logout");
//        map.put("/busInfo.action", "authc,roles[user]");
//        map.put("/admin.jsp", "authc,roles[admin]");
//        map.put("/list.jsp", "user");

        map.put("/**", "authc");
//        map.put("/**", "anon");

        return map;
    }
}
