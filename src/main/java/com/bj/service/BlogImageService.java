package com.bj.service;

import com.bj.pojo.BlogImage;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface BlogImageService {
    List<BlogImage> list();

    String save(MultipartFile file,BlogImage blogImage, ModelMap map) throws IOException;
}
