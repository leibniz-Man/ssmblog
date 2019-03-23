package com.bj.service;

import com.bj.mapper.BlogImageMapper;
import com.bj.pojo.BlogImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service("blogImageService")
public class BlogImageServiceImpl implements BlogImageService{
    @Autowired
    private BlogImageMapper blogImageMapper;

    @Override
    public List<BlogImage> list() {
        return blogImageMapper.list();
    }

    @Override
    @Transactional
    public String save(MultipartFile file,BlogImage blogImage, ModelMap map) throws IOException {

        // 保存图片的路径，图片上传成功后，将路径保存到数据库
        String filePath = "E:\\upload";
        // 获取原始图片的扩展名
        String originalFilename = file.getOriginalFilename();
        // 生成文件新的名字
        String newFileName = UUID.randomUUID() + originalFilename;
        // 封装上传文件位置的全路径
        File targetFile = new File(filePath, newFileName);
        file.transferTo(targetFile);

        // 保存到数据库
        blogImage.setId(new Random().nextInt());
        blogImage.setUpimage(newFileName);
        blogImageMapper.save(blogImage);
        return "redirect:/jsp/email_nei.jsp";
    }
}
