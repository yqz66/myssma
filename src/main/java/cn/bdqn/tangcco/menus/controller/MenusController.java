package cn.bdqn.tangcco.menus.controller;

import cn.bdqn.tangcco.menus.services.MenusServices;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/6/9.
 */
@Controller
public class MenusController {
    @Resource
    private MenusServices menusServices;


//
//    @ResponseBody
//    @RequestMapping(value = "/menuslist.controller",method = RequestMethod.POST)
//    public List<Menus> queryMenusByRoleId(String name,HttpServletRequest request){
//        System.out.println("进入方法");
//        Tbuser tbuser = (Tbuser) request.getSession().getAttribute("user");
//        List<Menus> list = menusServices.queryMenusByRoleId(tbuser.getRoleid());
//        for (Menus me : list){
//            System.out.println(me);
//        }
//        return list;
//    }
}
