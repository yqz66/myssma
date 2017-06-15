package cn.bdqn.tangcco.main.controller;

import cn.bdqn.tangcco.menus.services.MenusServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/6/9.
 */
@Controller
public class MainControllera {
    @Resource
    private MenusServices menusServices;
    @RequestMapping(value = "/left.controller",method = RequestMethod.GET)
    public String left(){
        return "/main/left";
    }
    @RequestMapping(value = "/right.controller", method = RequestMethod.GET)
    public String right() {
        return "/main/right";
    }
    @RequestMapping(value = "/top.controller",method = RequestMethod.GET)
    public String top(){
        return "/main/top";
    }
}
