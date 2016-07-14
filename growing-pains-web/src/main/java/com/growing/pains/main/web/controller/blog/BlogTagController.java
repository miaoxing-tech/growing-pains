package com.growing.pains.main.web.controller.blog;

import com.google.common.base.Preconditions;
import com.growing.pains.common.result.ApiResult;
import com.growing.pains.main.web.auth.context.SessionContext;
import com.growing.pains.model.entity.blog.BlogTagEntity;
import com.growing.pains.service.blog.BlogTagService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author: miaoxing
 * DATE:    16/7/13
 */
@Controller
@RequestMapping("blogTag")
public class BlogTagController {

    @Resource
    private BlogTagService tagService;

    @RequestMapping(value = "addTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult addTag(BlogTagEntity tag) {
        checkBlogTag(tag);
        tag.setUserId(SessionContext.getCurrentUser().getId());
        tagService.addTag(tag);
        return ApiResult.succ();
    }

    @RequestMapping(value = "updateTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult updateTag(BlogTagEntity tag) {
        checkBlogTag(tag);
        tagService.updateTag(tag);
        return ApiResult.succ();
    }

    private void checkBlogTag(BlogTagEntity tag) {
        Preconditions.checkArgument(StringUtils.isNotBlank(tag.getName()), "标签名不能为空");
        Preconditions.checkArgument(StringUtils.isNotBlank(tag.getDesc()), "标签描述不能为空");
        Preconditions.checkNotNull(SessionContext.getCurrentUser(), "当前用户为null");
        Preconditions.checkArgument(SessionContext.getCurrentUser().getId() > 0, "当前用户不合法");
    }

    @RequestMapping(value = "deleteTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult deleteTag(@RequestParam("tagId") int tagId) {
        tagService.deleteTag(tagId);
        return ApiResult.succ();
    }
}
