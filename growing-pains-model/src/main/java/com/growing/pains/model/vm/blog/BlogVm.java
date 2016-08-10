package com.growing.pains.model.vm.blog;

import com.growing.pains.model.entity.blog.BlogContentEntity;
import com.growing.pains.model.entity.blog.BlogTagEntity;

import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/8/8
 */
public class BlogVm {

    private BlogContentEntity blogContentEntity;

    private List<BlogTagEntity> blogTagEntityList;

    private String userName;

    public BlogContentEntity getBlogContentEntity() {
        return blogContentEntity;
    }

    public void setBlogContentEntity(BlogContentEntity blogContentEntity) {
        this.blogContentEntity = blogContentEntity;
    }

    public List<BlogTagEntity> getBlogTagEntityList() {
        return blogTagEntityList;
    }

    public void setBlogTagEntityList(List<BlogTagEntity> blogTagEntityList) {
        this.blogTagEntityList = blogTagEntityList;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
