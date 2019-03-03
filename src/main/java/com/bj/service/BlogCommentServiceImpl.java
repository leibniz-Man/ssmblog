package com.bj.service;


import com.bj.mapper.BlogCommentMapper;
import com.bj.pojo.BlogComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("blogCommentService")
public class BlogCommentServiceImpl implements BlogCommentService{

    @Autowired
    private BlogCommentMapper blogCommentMapper;

    @Override
    public List<BlogComment> queryByBlogId(Integer id) {
        return blogCommentMapper.queryByBlogId(id);
    }

    @Override
    public void deletecomment(Integer id) {
        blogCommentMapper.deletecomment(id);
    }
}
