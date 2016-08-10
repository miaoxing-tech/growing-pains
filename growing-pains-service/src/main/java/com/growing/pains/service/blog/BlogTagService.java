package com.growing.pains.service.blog;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.base.Preconditions;
import com.growing.pains.dao.blog.BlogContentTagDao;
import com.growing.pains.dao.blog.BlogTagDao;
import com.growing.pains.model.entity.blog.BlogTagEntity;
import com.growing.pains.model.param.BlogTagParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/7/13
 */
@Service
public class BlogTagService {

    final private Logger logger = LoggerFactory.getLogger(BlogTagService.class);

    @Resource
    private BlogTagDao blogTagDao;

    @Resource
    private BlogContentTagDao blogContentTagDao;

    public void addTag(BlogTagEntity tag) {
        BlogTagParam param = new BlogTagParam();
        param.setName(tag.getName());
        param.setUserId(tag.getUserId());
        int count = blogTagDao.countByParam(param);
        Preconditions.checkArgument(count == 0, "您已创建同名标签");

        int index = blogTagDao.insert(tag);
        Preconditions.checkArgument(index > 0, "插入博客标签失败");
        Preconditions.checkArgument(tag.getId() > 0, "标签id不合法");
    }

    public void updateTag(BlogTagEntity tag) {
        tag.setUpdateTime(new Date());
        int index = blogTagDao.update(tag);
        Preconditions.checkArgument(index > 0, "修改博客标签失败");
    }

    public void deleteTag(List<Integer> tagIds) {
        blogTagDao.delete(tagIds);
    }

    public List<BlogTagEntity> queryByUserId(int userId) {
        BlogTagParam param = new BlogTagParam();
        param.setUserId(userId);
        return queryByParam(param);
    }

    public PageInfo<BlogTagEntity> queryPageByParam(BlogTagParam param) {
        Preconditions.checkArgument(param.getPageNum() > 0, "当前页数必须大于0");
        Preconditions.checkArgument(param.getPageSize() > 0, "每页数量必须大于0");

        PageHelper.startPage(param.getPageNum(), param.getPageSize());
        List<BlogTagEntity> tags = blogTagDao.queryPageByParam(param);
        return new PageInfo<>(tags);
    }

    public List<BlogTagEntity> queryByParam(BlogTagParam param) {
        return blogTagDao.queryByParam(param);
    }

    public int countTagUse(int tagId) {
        return blogContentTagDao.countByTagId(tagId);
    }
}
