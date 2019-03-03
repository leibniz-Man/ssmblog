package com.bj.service;


import com.bj.mapper.UserMapper;
import com.bj.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService{


    @Autowired
    private UserMapper userMapper;

    @Override
    public User check(User user) {
        return userMapper.select(user);
    }

    @Override
    public void regist(User user) throws UnknownHostException {
        InetAddress inetAddress=InetAddress.getLocalHost();
        String ip=inetAddress.toString();
        user.setIp(ip);
        userMapper.insert(user);
    }

    @Override
    public List<User> finduser() {
        return userMapper.finduser();
    }

    @Override
    public Object checkvip(String vip) {
        return userMapper.checkvip(vip);
    }


}
