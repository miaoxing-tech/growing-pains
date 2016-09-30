package com.growing.pains.service.blog;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.base.Preconditions;
import com.growing.pains.dao.blog.BlogContentDao;
import com.growing.pains.dao.blog.BlogContentTagDao;
import com.growing.pains.model.entity.blog.BlogContentEntity;
import com.growing.pains.model.entity.blog.BlogContentTagEntity;
import com.growing.pains.model.enums.BlogState;
import com.growing.pains.model.param.BlogParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Service
public class BlogService {

    final private Logger logger = LoggerFactory.getLogger(BlogService.class);

    @Resource
    private BlogContentDao blogContentDao;

    @Resource
    private BlogContentTagDao blogContentTagDao;

    public PageInfo<BlogContentEntity> queryPageByParam(BlogParam param) {
        Preconditions.checkArgument(param.getPageNum() > 0, "当前页数必须大于0");
        Preconditions.checkArgument(param.getPageSize() > 0, "每页数量必须大于0");

        PageHelper.startPage(param.getPageNum(), param.getPageSize());
        List<BlogContentEntity> blog = blogContentDao.queryPageByParam(param);
        return new PageInfo<>(blog);
    }

    @Transactional
    public void addBlog(BlogContentEntity blog, List<Integer> tagIds) {
        int index = blogContentDao.insert(blog);
        Preconditions.checkArgument(index > 0, "插入博客内容失败");
        Preconditions.checkArgument(blog.getId() > 0, "博客id不合法");

        if (CollectionUtils.isEmpty(tagIds)) {
            return;
        }

        for (Integer tagId : tagIds) {
            Preconditions.checkArgument(tagId > 0, "标签id不合法");
            BlogContentTagEntity entity = new BlogContentTagEntity();
            entity.setBlogContentId(blog.getId());
            entity.setBlogTagId(tagId);

            logger.info("插入博客标签关系, blogId = {}, tagId = {}", blog.getId(), tagId);
            int insert = blogContentTagDao.insert(entity);
            Preconditions.checkArgument(insert > 0, "插入博客标签关系失败, 请联系管理员处理");
        }
    }

    public void updateBlog(BlogContentEntity blog) {
        blog.setUpdateTime(new Date());
        int index = blogContentDao.update(blog);
        Preconditions.checkArgument(index > 0, "修改博客内容失败, 请联系管理员处理");
    }

    @Transactional
    public void updateBlogTag(List<Integer> tagIds, int blogContentId) {
        List<BlogContentTagEntity> entities = queryTagByContentId(blogContentId);
        if (!CollectionUtils.isEmpty(entities)) {
            blogContentTagDao.delete(entities);
        }

        if (CollectionUtils.isEmpty(tagIds)) {
            return;
        }

        List<BlogContentTagEntity> blogContentTagEntities = tagIds.stream()
                .filter(input -> input != null && input > 0)
                .map(tagId -> {
                    BlogContentTagEntity entity = new BlogContentTagEntity();
                    entity.setBlogContentId(blogContentId);
                    entity.setBlogTagId(tagId);
                    return entity;
                }).collect(Collectors.toList());
        for (BlogContentTagEntity entity : blogContentTagEntities) {
            logger.info("插入博客标签关系, blogId = {}, tagId = {}", entity.getBlogContentId(), entity.getBlogTagId());
            int insert = blogContentTagDao.insert(entity);
            Preconditions.checkArgument(insert > 0, "插入博客标签关系失败, 请联系管理员处理");
        }
    }

    public void deleteBlog(int blogId, int userId) {
        int delete = blogContentDao.updateState(blogId, userId, BlogState.INVALID.getCode());
        Preconditions.checkArgument(delete > 0, "删除博客失败, 请联系管理员处理");
    }

    public List<BlogContentEntity> queryByParam(BlogParam param) {
        return blogContentDao.queryByParam(param);
    }

    public List<BlogContentTagEntity> queryTagByContentId(int blogContentId) {
        return blogContentTagDao.queryByContentId(blogContentId);
    }

    public int countTotalBlog() {
        return blogContentDao.countBlog();
    }

    public BlogContentEntity getLastBlog() {
        return blogContentDao.selectLastBlog();
    }

    public List<BlogContentEntity> queryNewestBlogList(int size) {
        return blogContentDao.selectNewest(size);
    }
}
