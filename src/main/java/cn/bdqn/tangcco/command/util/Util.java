package cn.bdqn.tangcco.command.util;

import cn.bdqn.tangcco.entity.PageResult;

/**
 * Created by Administrator on 2017/6/11.
 */
public class Util {
    public static PageResult getPageResult(PageResult pageResult){
        pageResult.setPageNumber((pageResult.getPageNumber()-1)*pageResult.getPageSize());
        pageResult.setTotalPages(pageResult.getTotalPosts()/pageResult.getPageSize()+(pageResult.getTotalPosts()%pageResult.getPageSize()>0?1:0));
        return pageResult;
    }
}
