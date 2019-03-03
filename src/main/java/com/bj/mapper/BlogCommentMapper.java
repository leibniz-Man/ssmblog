package com.bj.mapper;

import com.bj.pojo.BlogComment;

import java.util.List;

public interface BlogCommentMapper {
    List<BlogComment> queryByBlogId(Integer id);

    void deletecomment(Integer id);
}
