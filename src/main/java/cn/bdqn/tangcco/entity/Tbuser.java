package cn.bdqn.tangcco.entity;

import java.sql.Date;
import java.sql.Timestamp;

public class Tbuser {
    private Integer userid;

    private String username;

    private String password;

    private Integer roleid;

    private String nickname;

    private Timestamp registrationtime;

    private Date dateofbirth;

    private Timestamp systemtime;

    private String gender;
    private Roles roles;

    public Tbuser() {
    }

    @Override
    public String toString() {
        return "Tbuser{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", roleid=" + roleid +
                ", nickname='" + nickname + '\'' +
                ", registrationtime=" + registrationtime +
                ", dateofbirth=" + dateofbirth +
                ", systemtime=" + systemtime +
                ", gender='" + gender + '\'' +
                ", roles=" + roles +
                '}';
    }

    public Tbuser(String username) {
        this.username = username;
    }

    public Roles getRoles() {
        return roles;
    }

    public void setRoles(Roles roles) {
        this.roles = roles;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Timestamp getRegistrationtime() {
        return registrationtime;
    }

    public void setRegistrationtime(Timestamp registrationtime) {
        this.registrationtime = registrationtime;
    }

    public Date getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public Timestamp getSystemtime() {
        return systemtime;
    }

    public void setSystemtime(Timestamp systemtime) {
        this.systemtime = systemtime;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}