package com.bj.service;


import com.bj.pojo.BlogComment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BlogCommentService {
    List<BlogComment> queryByBlogId(Integer id);

    void deletecomment(Integer id);
}
