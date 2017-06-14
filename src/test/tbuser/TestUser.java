package tbuser;

import cn.bdqn.tangcco.command.util.Util;
import cn.bdqn.tangcco.entity.Msg;
import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Roles;
import cn.bdqn.tangcco.entity.Tbuser;
import cn.bdqn.tangcco.user.services.UserServices;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/5.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class TestUser {
    @Resource
    private UserServices userServices;
    @Inject
    PageResult page;
    @Test
    public void testQuery(){
        Tbuser user = new Tbuser();
        page.setPageNumber(3);
        page.setTotalPosts(userServices.queryCount(user));
        int [] arr = {page.getPageNumber()-2,page.getPageNumber()-1,page.getPageNumber(),page.getPageNumber()+1,page.getPageNumber()+2};
        for (int i:arr){
            System.out.println(i);
        }
        page = Util.getPageResult(page);
        System.out.println(page);
        for(Tbuser tbuser : userServices.queryAllTbuser(page,user)){
            System.out.println(tbuser);
        }
    }
    @Test
    public void testAdd(){
        Tbuser user = new Tbuser();
        user.setUsername("sdfSDF");
        user.setGender("01");
        user.setRoleid(1);
        Roles roles = new Roles();
        roles.setRoleid(1);
        user.setRoles(roles);
        user.setRegistrationtime(new Timestamp(new Date().getTime()));
        userServices.addTbuser(user);
    }
    @Test
    public void testLogin(){
        Tbuser tbuser = new Tbuser();
        tbuser.setUsername("admin");
        tbuser.setPassword("123");
        System.out.println(userServices.login(tbuser));
    }
    @Test
    public void testAddUser(){
       /* Tbuser tbuser = new Tbuser();
        Date utliDate = new Date();
        Timestamp timestamp = new Timestamp(utliDate.getTime());
        tbuser.setSystemtime(timestamp);
        tbuser.setRegistrationtime(timestamp);
        int i = userServices.addTbuser(tbuser);
        System.out.println(i);*/
        System.out.println(Msg.success(null));
    }
    @Test
    public void testUpdateUserByKey(){
        Tbuser tbuser = new Tbuser();
        tbuser.setUserid(36);
        tbuser.setUsername("确定修改成功");
        System.out.println(userServices.updateTbuserById(tbuser));
    }
}
