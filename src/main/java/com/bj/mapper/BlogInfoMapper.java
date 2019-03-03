package com.bj.mapper;

import com.bj.pojo.BlogComment;
import com.bj.pojo.BlogInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogInfoMapper {
    List<BlogInfo> queryAll();


    List<BlogInfo> queryByTitle(@Param("title")String title);


    void addcomment(BlogComment blogComment);

    void addcontent(BlogInfo blogInfo);


    void deleteinfo(@Param("id")Integer id);
}
