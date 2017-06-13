package cn.bdqn.tangcco.entity;

public class Roles {
    private Integer roleid;

    private String rolesname;


    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolesname() {
        return rolesname;
    }

    public void setRolesname(String rolesname) {
        this.rolesname = rolesname == null ? null : rolesname.trim();
    }


}