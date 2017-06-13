package cn.bdqn.tangcco.role.services.impl;

import cn.bdqn.tangcco.entity.Roles;
import cn.bdqn.tangcco.entity.RolesExample;
import cn.bdqn.tangcco.role.dao.RolesMapper;
import cn.bdqn.tangcco.role.services.RolesServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/6/11.
 */
@Service
public class RolesServicesImpl implements RolesServices {
    @Resource
    private RolesMapper rolesMapper;
    @Override
    public List<Roles> queryAllRoles() {
        return rolesMapper.selectByExample(null);
    }
}
