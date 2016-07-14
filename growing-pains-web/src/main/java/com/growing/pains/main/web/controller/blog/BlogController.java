package com.growing.pains.main.web.controller.blog;

import com.google.common.base.Preconditions;
import com.growing.pains.common.result.ApiResult;
import com.growing.pains.main.web.auth.context.SessionContext;
import com.growing.pains.model.entity.blog.BlogContentEntity;
import com.growing.pains.service.blog.BlogService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Controller
@RequestMapping("blog")
public class BlogController {

    @Resource
    private BlogService blogService;

    @RequestMapping(value = "addBlog", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult addBlog(BlogContentEntity blog, @RequestParam("tagIds") List<Integer> tagIds) {
        checkBlogContent(blog);
        blog.setUserId(SessionContext.getCurrentUser().getId());
        blogService.addBlog(blog, tagIds);
        return ApiResult.succ();
    }

    @RequestMapping(value = "updateBlog", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult updateBlog(BlogContentEntity blog) {
        checkBlogContent(blog);
        blogService.updateBlog(blog);
        return ApiResult.succ();
    }

    private void checkBlogContent(BlogContentEntity blog) {
        Preconditions.checkArgument(StringUtils.isNotBlank(blog.getTitle()), "博文标题不能为空");
        Preconditions.checkArgument(StringUtils.isNotBlank(blog.getContent()), "博文内容不能为空");
        Preconditions.checkNotNull(SessionContext.getCurrentUser(), "当前用户为null");
        Preconditions.checkArgument(SessionContext.getCurrentUser().getId() > 0, "当前用户不合法");
    }

    @RequestMapping(value = "updateBlogTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult updateBlogTag(@RequestParam("tagIds") List<Integer> tagIds,
                               @RequestParam("blogContentId") int blogContentId) {
        Preconditions.checkArgument(blogContentId > 0, "博文id不合法");
        blogService.updateBlogTag(tagIds, blogContentId);
        return ApiResult.succ();
    }
}
