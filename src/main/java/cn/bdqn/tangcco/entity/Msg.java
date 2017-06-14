package cn.bdqn.tangcco.entity;

import java.util.Map;

/**
 * Created by Administrator on 2017/6/13.
 */
public class Msg {
    private String code;
    private Map<String,Object> map;
    private String msg;
    public static Msg success(Map<String,Object> map){
        return new Msg("100",map,"处理成功!");
    }
    public static Msg error(Map<String,Object> map){
        return new Msg("200", map, "处理失败");
    }

    public Msg(String code, Map<String, Object> map, String msg) {
        this.code = code;
        this.map = map;
        this.msg = msg;
    }

    public Msg() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "Msg{" +
                "code='" + code + '\'' +
                ", map=" + map +
                ", msg='" + msg + '\'' +
                '}';
    }
}
