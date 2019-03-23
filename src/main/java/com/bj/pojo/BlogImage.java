package com.bj.pojo;

import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

public class BlogImage {
    private Integer id;
    private String upimage;
    private String imagecontent;

    public String getImagecontent() {
        return imagecontent;
    }

    public void setImagecontent(String imagecontent) {
        this.imagecontent = imagecontent;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUpimage() {
        return upimage;
    }

    public void setUpimage(String upimage) {
        this.upimage = upimage;
    }

}
