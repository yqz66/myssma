package cn.bdqn.tangcco.user.services;

import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Tbuser;

import java.util.List;

/**
 * Created by Administrator on 2017/6/5.
 */
public interface UserServices {
    public List<Tbuser> queryAllTbuser(PageResult pageResult,Tbuser tbuser);
    public Tbuser login(Tbuser tbuser);
    public int queryCount(Tbuser tbuser);
    public int addTbuser(Tbuser tbuser);
    void deleteUser(int userid);
    void deleteByUserIds(List<Integer> list);
    Tbuser queryTbuserById(Integer userid);
    int queryTbuserByUserName(Tbuser tbuser);
    int updateTbuserById(Tbuser tbuser);
}
