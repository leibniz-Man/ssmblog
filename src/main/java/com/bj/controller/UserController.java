package com.bj.controller;


import com.bj.pojo.User;
import com.bj.service.UserService;
import com.sun.deploy.nativesandbox.comm.Request;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.net.UnknownHostException;
import java.util.List;

@Controller
@RequestMapping("/blog")
public class UserController {


    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user  , Model model,HttpSession httpSession){
        if (user!=null){
            model.addAttribute("user1",userService.check(user));
            httpSession.setAttribute("user",userService.check(user));
            return "homepage";
        }else{
            return "redirect:/jsp/loginfailed.jsp";
        }
    }

    @RequestMapping("/regist")
    public String regist(User user) throws UnknownHostException {
        userService.regist(user);
        return "redirect:/jsp/login.jsp";
    }


    @RequestMapping("/finduser/{vip}")
    public String finduser(@PathVariable("vip")String vip, Model model){
        List<User> finduser=userService.finduser();
        if (vip.equals("您是管理员")){
            model.addAttribute("finduser",finduser);
            model.addAttribute("user1",userService.checkvip(vip));
            return "homepage";
        }else{
            return "novip";
        }
    }

    @RequestMapping("/tohomepage")
    public String tohomepage(){
        return "homepage";
    }
}
