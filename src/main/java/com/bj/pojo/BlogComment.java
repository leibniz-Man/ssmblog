package com.bj.pojo;

import java.util.Date;
import java.util.List;

public class BlogComment {
    private Integer id;
    private String usercontent;
    private String author;
    private Date createDate;
    private BlogInfo blogInfo;

    private List<BlogComment> blogComment;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsercontent() {
        return usercontent;
    }

    public void setUsercontent(String usercontent) {
        this.usercontent = usercontent;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public BlogInfo getBlogInfo() {
        return blogInfo;
    }

    public void setBlogInfo(BlogInfo blogInfo) {
        this.blogInfo = blogInfo;
    }

    public List<BlogComment> getBlogComment() {
        return blogComment;
    }

    public void setBlogComment(List<BlogComment> blogComment) {
        this.blogComment = blogComment;
    }
}
