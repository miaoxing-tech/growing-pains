package com.growing.pains.model.entity.blog;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 博客评论实体类
 *
 * @author: miaoxing
 * DATE:    16/7/11
 */
public class BlogCommentEntity {

    /**
     * 主键
     */
    private int id;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 评论人
     */
    private String userName;

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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
