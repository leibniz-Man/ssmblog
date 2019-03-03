package com.bj.controller;

import com.bj.pojo.BlogComment;
import com.bj.service.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class BlogCommentController {

    @Autowired
    private BlogCommentService blogCommentService;


    @RequestMapping("/query/blogid/{id}")
    public String querycommentByBlogId(@PathVariable("id") Integer blogid, Model model){

        List<BlogComment> list= blogCommentService.queryByBlogId(blogid);
        model.addAttribute("comment",list);
        return "comment";
    }


    @RequestMapping("/deletecomment/{id}")
    public String deletecomment(@PathVariable("id")Integer id){
        blogCommentService.deletecomment(id);
        return "deletecommentsuccess";
    }

}
