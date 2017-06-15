package cn.bdqn.tangcco.user.controller;

import cn.bdqn.tangcco.command.util.Util;
import cn.bdqn.tangcco.entity.Msg;
import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Tbuser;
import cn.bdqn.tangcco.user.services.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/6/8.
 */
@Controller
public class UserController {
    @Inject
    private UserServices userServices;
    @Inject
    private PageResult pageResult;

    @RequestMapping(value = "/login.controller", method = RequestMethod.POST)
    public String login(Tbuser tbuser, HttpServletRequest request) {
        tbuser = userServices.login(tbuser);
        if (tbuser != null) {
            request.getSession().setAttribute("user", tbuser);
            return "/main/main";
        }
        request.setAttribute("msg", "对不起账号密码错误!");
        return "../../index";
    }

    @RequestMapping(value = "/login.controller", method = RequestMethod.GET)
    public String getLogin(HttpServletRequest request) {
        Tbuser tbuser = (Tbuser) request.getSession().getAttribute("user");
        if (tbuser != null) {
            return "/main/main";
        }
        request.setAttribute("msg", "请登录!");
        return "../../index";
    }

    @RequestMapping(value = "/listuser.controller",method = {RequestMethod.GET,RequestMethod.POST})
    public String list( PageResult page,Model model,HttpServletRequest request) {
        String username = request.getParameter("username");
        Tbuser tbuser = null;
        if (username != null && !"".equals(username)) {
            page.setPageNumber(1);
            tbuser = new Tbuser(username);
        }
        if (page.getPageNumber() == 0) {
            page.setPageNumber(1);
        }
        int pageNumbe = page.getPageNumber();
        page.setPageSize(pageResult.getPageSize());
        page.setTotalPosts(userServices.queryCount(tbuser));
        page = Util.getPageResult(page);
        List<Tbuser> list = userServices.queryAllTbuser(page, tbuser);
        page.setPageNumber(pageNumbe);
        int[] arr = {pageNumbe - 2, pageNumbe - 1, pageNumbe, pageNumbe + 1, pageNumbe + 2};
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] < 1 || arr[i] > page.getTotalPages()) {
                arr[i] = 0;
            }
        }
        model.addAttribute("userlist", list);
        model.addAttribute("arr", arr);
        model.addAttribute("page", page);
        return "user/listUser";
    }

    @ResponseBody
    @RequestMapping(value = "/addUser.controller", method = RequestMethod.POST)
    public Msg addUser(Tbuser tbuser) {
        Date utliDate = new Date();
        Timestamp timestamp = new Timestamp(utliDate.getTime());
        tbuser.setSystemtime(timestamp);
        tbuser.setRegistrationtime(timestamp);
        int i = userServices.addTbuser(tbuser);
        if (i > 0) {
            return Msg.success(null);
        }
        return Msg.error(null);
    }

    //二合一删除方法
    @ResponseBody
    @RequestMapping(value = "/{userid}/delete.controller", method = RequestMethod.GET)
    public Msg deleteUser(@PathVariable("userid") String userids) {
        //当我们的id传回来时带有-那么进行分割否则直接转成int删除
        if (userids.contains("-")) {
            List<Integer> list = new ArrayList<Integer>();
            //分割字符串
            String[] str = userids.split("-");
            //将每个Id增加进list
            for (String id : str) {
                list.add(Integer.parseInt(id));
            }
            //服务层有一个根据多个ID删除的方法
            userServices.deleteByUserIds(list);
            System.out.println("进入删除多个");
        } else {
            userServices.deleteUser(Integer.parseInt(userids));
            System.out.println("删除一个");
        }
        return Msg.success(null);
    }
    //按主键查询用户
    @ResponseBody
    @RequestMapping(value = "/{id}/detail.controller",method = RequestMethod.GET)
    public Tbuser queryTbuserById(@PathVariable("id") Integer userid){
        return userServices.queryTbuserById(userid);
    }

    @ResponseBody
    @RequestMapping(value = "/update.controller",method = RequestMethod.POST)
    public Msg updateTbuserById(Tbuser tbuser){
        System.out.println(tbuser);
        int i = userServices.updateTbuserById(tbuser);
        if (i>0) {
            return Msg.success(null);
        }
        return Msg.error(null);
    }
    @ResponseBody
    @RequestMapping(value = "queryUsername.controller",method = RequestMethod.GET)
    public Msg queryUserByUsername(Tbuser tbuser){
            int i = userServices.queryTbuserByUserName(tbuser);
            if (i>0) {
                return Msg.error(null);
            }
            return Msg.success(null);
    }
}
