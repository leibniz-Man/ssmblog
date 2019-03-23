package com.bj.service;

import com.bj.pojo.BlogBoard;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BlogBoardService {
    List<BlogBoard> findmessage();

    void insertmessage(BlogBoard blogBoard);
}
