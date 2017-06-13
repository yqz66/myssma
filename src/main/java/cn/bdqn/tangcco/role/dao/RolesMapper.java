package cn.bdqn.tangcco.role.dao;

import cn.bdqn.tangcco.entity.Roles;
import cn.bdqn.tangcco.entity.RolesExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RolesMapper {

    long countByExample(RolesExample example);

    int deleteByExample(RolesExample example);

    int deleteByPrimaryKey(Integer roleid);

    int insert(Roles record);

    int insertSelective(Roles record);

    List<Roles> selectByExample(RolesExample example);

    Roles selectByPrimaryKey(Integer roleid);

    int updateByExampleSelective(@Param("record") Roles record, @Param("example") RolesExample example);

    int updateByExample(@Param("record") Roles record, @Param("example") RolesExample example);

    int updateByPrimaryKeySelective(Roles record);

    int updateByPrimaryKey(Roles record);
}