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
    public static int[] getPageArray(PageResult page){
        int[] arr = {page.getPageNumber() - 2, page.getPageNumber() - 1, page.getPageNumber(), page.getPageNumber() + 1, page.getPageNumber() + 2};
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] < 1 || arr[i] > page.getTotalPages()) {
                arr[i] = 0;
            }
        }
        return arr;
    }
}
