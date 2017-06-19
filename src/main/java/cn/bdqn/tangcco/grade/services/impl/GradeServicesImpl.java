package cn.bdqn.tangcco.grade.services.impl;

import cn.bdqn.tangcco.entity.Grade;
import cn.bdqn.tangcco.grade.dao.GradeMapper;
import cn.bdqn.tangcco.grade.services.GradeServices;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by Administrator on 2017/6/19.
 */
@Service
public class GradeServicesImpl implements GradeServices {
    @Inject
    private GradeMapper gradeMapper;
    @Override
    public List<Grade> queryAllGrade() {
        return gradeMapper.selectByExample(null);
    }
}
