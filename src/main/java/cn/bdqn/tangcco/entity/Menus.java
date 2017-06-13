package cn.bdqn.tangcco.entity;

public class Menus {
    private Integer menuid;

    private String menusname;

    private String url;

    @Override
    public String toString() {
        return "Menus{" +
                "menuid=" + menuid +
                ", menusname='" + menusname + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public Integer getMenuid() {
        return menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }

    public String getMenusname() {
        return menusname;
    }

    public void setMenusname(String menusname) {
        this.menusname = menusname == null ? null : menusname.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}