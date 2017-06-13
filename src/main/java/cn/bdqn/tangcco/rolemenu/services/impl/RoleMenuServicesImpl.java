package cn.bdqn.tangcco.rolemenu.services.impl;

import cn.bdqn.tangcco.entity.RoleMenu;
import cn.bdqn.tangcco.rolemenu.dao.RoleMenuMapper;
import cn.bdqn.tangcco.rolemenu.services.RoleMenuServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/6/10.
 */
@Service
public class RoleMenuServicesImpl implements RoleMenuServices {
    @Resource
    private RoleMenuMapper roleMenuMapper;
    @Override
    public List<RoleMenu> queryRoleMenuByRoleId(Integer roleid) {
        return roleMenuMapper.queryRolesMenuByRoleid(roleid);
    }
}
