package com.bj.mapper;

import com.bj.pojo.BlogBoard;

import java.util.List;

public interface BlogBoardMapper {
    List<BlogBoard> findmessage();

    void insertmessage(BlogBoard blogBoard);
}
