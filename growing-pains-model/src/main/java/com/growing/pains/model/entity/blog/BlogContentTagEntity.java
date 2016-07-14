package com.growing.pains.model.entity.blog;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 博客博文标签关系实体类
 *
 * @author: miaoxing
 * DATE:    16/7/11
 */
public class BlogContentTagEntity {

    /**
     * 主键
     */
    private int id;

    /**
     * 博客标签id
     */
    private int blogTagId;

    /**
     * 博客博文id
     */
    private int blogContentId;

    /**
     * 创建时间
     */
    private Date createTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBlogTagId() {
        return blogTagId;
    }

    public void setBlogTagId(int blogTagId) {
        this.blogTagId = blogTagId;
    }

    public int getBlogContentId() {
        return blogContentId;
    }

    public void setBlogContentId(int blogContentId) {
        this.blogContentId = blogContentId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }
}
