package cn.bdqn.tangcco.entity;

public class RoleMenu {
    private Integer rolemenuid;
    private Menus menus;
    private Integer roleid;
    public void setRolemenuid(Integer rolemenuid) {
        this.rolemenuid = rolemenuid;
    }
    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Menus getMenus() {
        return menus;
    }

    public void setMenus(Menus menus) {
        this.menus = menus;
    }

    @Override
    public String toString() {
        return "RoleMenu{" +
                "rolemenuid=" + rolemenuid +
                ", menus=" + menus +
                ", roleid=" + roleid +
                '}';
    }
}