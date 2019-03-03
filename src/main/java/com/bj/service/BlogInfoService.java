package com.bj.service;

import com.bj.pojo.BlogComment;
import com.bj.pojo.BlogInfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BlogInfoService {
    List<BlogInfo> queryAll();


    List<BlogInfo> queryByTitle(String title);


    void addcomment(BlogComment blogComment);

    void addcontent(BlogInfo blogInfo);


    void deleteinfo(Integer id);
}
