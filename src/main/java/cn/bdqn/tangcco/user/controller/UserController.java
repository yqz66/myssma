package cn.bdqn.tangcco.user.controller;

import cn.bdqn.tangcco.command.util.Util;
import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Tbuser;
import cn.bdqn.tangcco.user.services.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
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
    @Resource
    private UserServices userServices;
    @Inject
    private PageResult pageResult;
    @RequestMapping(value = "/login.controller",method = RequestMethod.POST)
    public String login(Tbuser tbuser, HttpServletRequest request){
        tbuser = userServices.login(tbuser);
        if (tbuser!=null){
            request.getSession().setAttribute("user",tbuser);
            return "/main/main";
        }
        request.setAttribute("msg","对不起账号密码错误!");
        return "../../index";
    }
    @RequestMapping(value = "/login.controller",method = RequestMethod.GET)
    public String getLogin(HttpServletRequest request){
        Tbuser tbuser = (Tbuser) request.getSession().getAttribute("user");
        if (tbuser!=null){
            return "/main/main";
        }
        request.setAttribute("msg","请登录!");
        return "../../index";
    }
    @RequestMapping(value = "/listuser.controller")
    public String list(Model model,PageResult page){
        if (page.getPageNumber()==0){
            page.setPageNumber(1);
        }
        int pageNumbe = page.getPageNumber();
        page.setPageSize(pageResult.getPageSize());
        page.setTotalPosts(userServices.queryCount(null));
        page = Util.getPageResult(page);
        List<Tbuser> list = userServices.queryAllTbuser(page,null);
        page.setPageNumber(pageNumbe);
        int [] arr = {pageNumbe-2,pageNumbe-1,pageNumbe,pageNumbe+1,pageNumbe+2};
        for (int i=0;i<arr.length;i++){
            if(arr[i]<1||arr[i]>page.getTotalPages()){
                arr[i]=0;
            }
        }
        model.addAttribute("userlist", list);
        model.addAttribute("arr",arr);
        model.addAttribute("page",page);
        return "user/listUser";
    }
    @ResponseBody
    @RequestMapping(value = "/addUser.controller",method = RequestMethod.POST,produces = "text/html;charset=UTF-8")
    public String addUser(Tbuser tbuser){
        Date utliDate = new Date();
        Timestamp timestamp = new Timestamp(utliDate.getTime());
        java.sql.Date date = new java.sql.Date(utliDate.getTime());
        tbuser.setSystemtime(timestamp);
        tbuser.setRegistrationtime(timestamp);
        int i =userServices.addTbuser(tbuser);
        if (i>0){
            return "100";
        }
        return "200";
    }
    //二合一删除方法
    @ResponseBody
    @RequestMapping(value = "/{userid}/delete.controller",method = RequestMethod.GET,produces = "text/html;charset=UTF-8")
    public String deleteUser(@PathVariable("userid") String userids){
        //当我们的id传回来时带有-那么进行分割否则直接转成int删除
        if (userids.contains("-")){
            List<Integer> list = new ArrayList<Integer>();
            //分割字符串
            String[] str = userids.split("-");
            //将每个Id增加进list
            for (String id : str) {
                list.add(Integer.parseInt(id));
            }
            //服务层有一个根据多个ID删除的方法
            userServices.deleteByUserIds(list);
        }else{
            userServices.deleteUser(Integer.parseInt(userids));
        }
        return "100";
    }

}
