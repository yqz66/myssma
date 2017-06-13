package cn.bdqn.tangcco.rolemenu.controller;

import cn.bdqn.tangcco.entity.RoleMenu;
import cn.bdqn.tangcco.rolemenu.services.RoleMenuServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/6/10.
 */
@Controller
public class RoleMenusController {
    @Resource
    private RoleMenuServices roleMenuServices;
    @ResponseBody
    @RequestMapping(value = "/querymenus/{roleid}.controller",method = RequestMethod.GET)
    public List<RoleMenu> queryRoleMenusByRoleId(@PathVariable("roleid") Integer roleid){
        return roleMenuServices.queryRoleMenuByRoleId(roleid);
    }
}
