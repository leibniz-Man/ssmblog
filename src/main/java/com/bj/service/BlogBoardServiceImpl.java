package com.bj.service;

import com.bj.mapper.BlogBoardMapper;
import com.bj.pojo.BlogBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Random;

@Service("blogBoardService")
public class BlogBoardServiceImpl implements BlogBoardService {

    @Autowired
    private BlogBoardMapper blogBoardMapper;

    @Override
    public List<BlogBoard> findmessage() {
        return blogBoardMapper.findmessage();
    }

    @Override
    public void insertmessage(BlogBoard blogBoard) {
        Date date = new Date();
        blogBoard.setId(new Random().nextInt());
        blogBoard.setDate(date);
        blogBoardMapper.insertmessage(blogBoard);
    }
}
