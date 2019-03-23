package com.bj.controller;

import com.bj.pojo.BlogImage;
import com.bj.service.BlogImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/image")
public class BlogImageController {


        @Autowired
        private BlogImageService blogImageService;

        @RequestMapping("/toimage")
        public String toimage(){
            return "email_nei";
        }

        @RequestMapping("/listImages")
        public String list(Model model) {
            List<BlogImage> lists = blogImageService.list();
            model.addAttribute("lists", lists);
            return "email_nei";
        }


        @RequestMapping("/save")
        public String save(MultipartFile file, BlogImage blogImage, ModelMap map) {
            try {
                return blogImageService.save(file, blogImage, map);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }
    }
