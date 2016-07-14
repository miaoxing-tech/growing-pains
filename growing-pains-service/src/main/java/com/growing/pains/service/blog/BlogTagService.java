package com.growing.pains.service.blog;

import com.google.common.base.Preconditions;
import com.growing.pains.dao.blog.BlogTagDao;
import com.growing.pains.model.entity.blog.BlogTagEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @author: miaoxing
 * DATE:    16/7/13
 */
@Service
public class BlogTagService {

    final private Logger logger = LoggerFactory.getLogger(BlogTagService.class);

    @Resource
    private BlogTagDao blogTagDao;

    public void addTag(BlogTagEntity tag) {
        int index = blogTagDao.insert(tag);
        Preconditions.checkArgument(index > 0, "插入博客标签失败");
        Preconditions.checkArgument(tag.getId() > 0, "标签id不合法");
    }

    public void updateTag(BlogTagEntity tag) {
        tag.setUpdateTime(new Date());
        int index = blogTagDao.update(tag);
        Preconditions.checkArgument(index > 0, "修改博客标签失败");
    }

    public void deleteTag(int tagId) {
        blogTagDao.delete(tagId);
    }
}
