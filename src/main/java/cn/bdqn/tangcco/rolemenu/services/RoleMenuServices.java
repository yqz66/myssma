package cn.bdqn.tangcco.rolemenu.services;

import cn.bdqn.tangcco.entity.RoleMenu;

import java.util.List;

/**
 * Created by Administrator on 2017/6/10.
 */
public interface RoleMenuServices {
    public List<RoleMenu> queryRoleMenuByRoleId(Integer roleid);
}
