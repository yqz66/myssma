package cn.bdqn.tangcco.user.services.impl;

import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Tbuser;
import cn.bdqn.tangcco.entity.TbuserExample;
import cn.bdqn.tangcco.user.dao.TbuserMapper;
import cn.bdqn.tangcco.user.services.UserServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

/**
 * Created by Administrator on 2017/6/5.
 */
@Service
public class UserServicesImpl implements UserServices {
    @Inject
    private TbuserMapper tbuserMapper;
    @Override
    public void deleteByUserIds(List<Integer> list) {
        //创建条件对象
        TbuserExample example = new TbuserExample();
        TbuserExample.Criteria criteria = example.createCriteria();
        //加上条件，调用的是in(?,?,?)sql语句
        criteria.andUseridIn(list);
        tbuserMapper.deleteByExample(example);
    }
    @Override
    public int queryTbuserByUserName(Tbuser tbuser) {
        TbuserExample example = new TbuserExample();
        TbuserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(tbuser.getUsername());
        int count=tbuserMapper.selectByExample(example).size();
        return count;
    }
    @Override
    public Tbuser queryTbuserById(Integer userid) {
        return tbuserMapper.selectByPrimaryKey(userid);
    }

    @Override
    public int updateTbuserById(Tbuser tbuser) {
        return tbuserMapper.updateByPrimaryKeySelective(tbuser);
    }

    @Override
    public void deleteUser(int userid) {
        tbuserMapper.deleteByPrimaryKey(userid);
    }

    public List<Tbuser> queryAllTbuser(PageResult pageResult, Tbuser tbuser) {
        return tbuserMapper.queryAllTbuser(pageResult,tbuser);
    }
    public Tbuser login(Tbuser tbuser) {
        return tbuserMapper.login(tbuser);
    }
    @Override
    public int addTbuser(Tbuser tbuser) {
        return tbuserMapper.insertSelective(tbuser);
    }
    @Override
    public int queryCount(Tbuser tbuser) {
        return tbuserMapper.queryCountUser(tbuser);
    }
}
