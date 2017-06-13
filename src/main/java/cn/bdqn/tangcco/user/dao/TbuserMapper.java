package cn.bdqn.tangcco.user.dao;

import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Tbuser;
import cn.bdqn.tangcco.entity.TbuserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbuserMapper {

    List<Tbuser> queryAllTbuser(@Param("page")PageResult pageResult,@Param("tbuser") Tbuser tbuser);
    int queryCountUser(Tbuser tbuser);
    Tbuser login(Tbuser tbuser);
    long countByExample(TbuserExample example);

    int deleteByExample(TbuserExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(Tbuser record);

    int insertSelective(Tbuser record);

    List<Tbuser> selectByExample(TbuserExample example);

    Tbuser selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") Tbuser record, @Param("example") TbuserExample example);

    int updateByExample(@Param("record") Tbuser record, @Param("example") TbuserExample example);

    int updateByPrimaryKeySelective(Tbuser record);

    int updateByPrimaryKey(Tbuser record);
}