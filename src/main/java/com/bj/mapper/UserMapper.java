package com.bj.mapper;

import com.bj.pojo.User;
import org.springframework.ui.Model;

import java.util.List;

public interface UserMapper {
    User select(User user);

    void insert(User user);


    List<User> finduser();

    Object checkvip(String vip);
}
