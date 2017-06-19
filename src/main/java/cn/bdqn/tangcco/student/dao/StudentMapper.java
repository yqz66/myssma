package cn.bdqn.tangcco.student.dao;

import cn.bdqn.tangcco.entity.PageResult;
import cn.bdqn.tangcco.entity.Student;
import cn.bdqn.tangcco.entity.StudentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    int queryCountStudent(@Param("student") Student student);
    List<Student> queryAllStudent(@Param("page")PageResult pageResult, @Param("student") Student student);

    long countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer stuid);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer stuid);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}