package com.bj.service;

import com.bj.mapper.BlogInfoMapper;
import com.bj.pojo.BlogComment;
import com.bj.pojo.BlogInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Random;

@Service("blogInfoService")
public class BlogInfoServiceImpl implements BlogInfoService{

    @Autowired
    private BlogInfoMapper blogInfoMapper;

    @Override
    public List<BlogInfo> queryAll() {
        return blogInfoMapper.queryAll();
    }

    @Override
    public List<BlogInfo> queryByTitle(String title) {
        return blogInfoMapper.queryByTitle(title);
    }

    @Override
    public void addcomment(BlogComment blogComment) {
        blogComment.setCreateDate(new Date());
        blogInfoMapper.addcomment(blogComment);
    }

    @Override
    public void addcontent(BlogInfo blogInfo) {
        blogInfo.setCreateDate(new Date());
        blogInfo.setId(new Random().nextInt());
        blogInfoMapper.addcontent(blogInfo);
    }

    @Override
    public void deleteinfo(Integer id) {
        blogInfoMapper.deleteinfo(id);
    }


}
