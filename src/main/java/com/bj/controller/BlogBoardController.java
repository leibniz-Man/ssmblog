package com.bj.controller;


import com.bj.pojo.BlogBoard;
import com.bj.service.BlogBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/board")
public class BlogBoardController {

    @Autowired
    private BlogBoardService blogBoardService;


    @RequestMapping("/toboard")
    public String toboard(Model model){
        List<BlogBoard> blogBoardList=blogBoardService.findmessage();
        model.addAttribute("blogboard",blogBoardList);
        return "message_board_nei";
    }

    @RequestMapping("/insertmessage/{username}")
    public String insertmessage(@PathVariable("username")String username, BlogBoard blogBoard){
        blogBoard.setUsername(username);
        blogBoardService.insertmessage(blogBoard);
        return "forward:/board/toboard";
    }
}
