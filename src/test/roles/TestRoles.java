package roles;

import cn.bdqn.tangcco.command.util.Util;
import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Roles;
import cn.bdqn.tangcco.role.services.RolesServices;
import org.junit.Test;
import rolemenu.TestBase;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/6/11.
 */
public class TestRoles extends TestBase {
    @Resource
    private RolesServices rolesServices;
    @Test
    public void testQueryAllRoles(){
        for (Roles roles : rolesServices.queryAllRoles()) {
            System.out.println(roles);
        }
    }
    @Test
    public void testPage(){
        PageResult page = new PageResult();
        page.setTotalPosts(300);
        page.setPageSize(4);
        page.setPageNumber(5);
        System.out.println(Util.getPageResult(page));
    }
}
