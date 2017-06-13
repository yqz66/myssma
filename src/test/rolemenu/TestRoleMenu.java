package rolemenu;

import cn.bdqn.tangcco.entity.RoleMenu;
import cn.bdqn.tangcco.rolemenu.services.RoleMenuServices;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/6/10.
 */

public class TestRoleMenu extends TestBase {
    @Resource
    private RoleMenuServices roleMenuServices;
    @Test
    public void testByRoleId(){
        for (RoleMenu rm:roleMenuServices.queryRoleMenuByRoleId(1)){
            System.out.println(rm);
        }
    }

}
