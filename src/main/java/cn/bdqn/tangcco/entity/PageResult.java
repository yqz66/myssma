package cn.bdqn.tangcco.entity;

/**
 * Created by Administrator on 2017/6/11.
 */
public class PageResult {
    private int pageNumber;
    private int pageSize;
    private int totalPosts;
    private int totalPages;

    @Override
    public String toString() {
        return "PageResult{" +
                "pageNumber=" + pageNumber +
                ", pageSize=" + pageSize +
                ", totalPosts=" + totalPosts +
                ", totalPages=" + totalPages +
                '}';
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPosts() {
        return totalPosts;
    }

    public void setTotalPosts(int totalPosts) {
        this.totalPosts = totalPosts;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }
}
