package com.bj.mapper;

import com.bj.pojo.BlogImage;

import java.util.List;

public interface BlogImageMapper {
    List<BlogImage> list();

    Integer save(BlogImage blogImage);

}
