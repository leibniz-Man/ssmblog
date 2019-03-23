package com.bj.service;


import com.bj.pojo.User;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.net.UnknownHostException;
import java.util.List;

@Service
public interface UserService {


    User check(User user);

    void regist(User user) throws UnknownHostException;


    List<User> finduser();

    Object checkvip(String vip);

}
