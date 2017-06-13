package cn.bdqn.tangcco.role.controller;

import cn.bdqn.tangcco.entity.Roles;
import cn.bdqn.tangcco.role.services.RolesServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/6/11.
 */
@Controller
public class RolesController {
    @Resource
    private RolesServices rolesServices;

    @ResponseBody
    @RequestMapping(value = "/queryroles.controller",method = RequestMethod.GET)
    public List<Roles> queryAllRoles(){
        return rolesServices.queryAllRoles();
    }
}
