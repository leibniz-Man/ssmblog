package com.bj.controller;


import com.bj.pojo.BlogComment;
import com.bj.pojo.BlogInfo;
import com.bj.service.BlogInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/info")
public class BlogInfoController {

    @Autowired
    private BlogInfoService blogInfoService;

    @RequestMapping("/main")
    public String main(Model model){
        List<BlogInfo> list=blogInfoService.queryAll();
        model.addAttribute("blogInfo",list);
        return "homepage_blog";
    }


    @RequestMapping("/query/title")
    public String queryByTitle(@RequestParam("title")String title, Model model){
        List<BlogInfo> list=blogInfoService.queryByTitle(title);
        model.addAttribute("blogInfo",list);
        return "homepage_blog";
    }

    @RequestMapping("/vip/addcomment/{id}")
    public String vipaddcomment(@PathVariable("id")Integer id,Model model){
        model.addAttribute("blogid",id);
        return "addcomment";
    }

    @RequestMapping("/addcomment")
    public String addcomment(BlogComment blogComment,Model model){
        blogInfoService.addcomment(blogComment);
        List<BlogInfo> list=blogInfoService.queryAll();
        model.addAttribute("blogInfo",list);
        return "homepage_blog";
    }


    @RequestMapping("/tocontent")
    public String tocontent(){
        return "addblog";
    }

    @RequestMapping("/add/content")
    public String addcontent(BlogInfo blogInfo,Model model){
        blogInfoService.addcontent(blogInfo);
        List<BlogInfo> list=blogInfoService.queryAll();
        model.addAttribute("blogInfo",list);
        return "homepage_blog";
    }


    @RequestMapping("/deleteinfo/{id}")
    public String deleteinfo(@PathVariable("id")Integer id){
        blogInfoService.deleteinfo(id);
        return "deleteinfosuccess";
    }
}
