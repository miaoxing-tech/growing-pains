package com.growing.pains.main.web.controller.blog;

import com.github.pagehelper.PageInfo;
import com.google.common.base.Preconditions;
import com.growing.pains.common.result.ApiResult;
import com.growing.pains.main.web.auth.context.SessionContext;
import com.growing.pains.model.entity.blog.BlogTagEntity;
import com.growing.pains.model.param.BlogTagParam;
import com.growing.pains.service.blog.BlogTagService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author: miaoxing
 * DATE:    16/7/13
 */
@Controller
@RequestMapping("blogTag")
public class BlogTagController {

    @Resource
    private BlogTagService tagService;

    @RequestMapping(value = "addPage", method = RequestMethod.GET)
    public ModelAndView addPage() {
        return new ModelAndView("tag/add");
    }

    @RequestMapping(value = "updatePage", method = RequestMethod.GET)
    public ModelAndView updatePage(@RequestParam("tagId") int tagId) {
        Preconditions.checkArgument(tagId > 0, "标签id不合法");

        BlogTagParam param = new BlogTagParam();
        param.setId(tagId);
        param.setUserId(SessionContext.getCurrentUser().getId());
        List<BlogTagEntity> entities = tagService.queryByParam(param);

        Preconditions.checkArgument(!CollectionUtils.isEmpty(entities), "您没有此id的标签");
        Preconditions.checkArgument(entities.size() == 1, "系统错误, 此id有多个标签");

        return new ModelAndView("tag/update").addObject("tag", entities.get(0));
    }

    @RequestMapping(value = "listPage", method = RequestMethod.GET)
    public ModelAndView listPage() {
        return new ModelAndView("tag/list");
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult list(BlogTagParam param) {
        Preconditions.checkArgument(param.getPageNum() != null && param.getPageNum() > 0, "页数不合法");
        Preconditions.checkArgument(param.getPageSize() != null && param.getPageSize() > 0, "每页数量不合法");

        param.setUserId(SessionContext.getCurrentUser().getId());
        PageInfo<BlogTagEntity> pageInfo = tagService.queryPageByParam(param);
        if (pageInfo.getTotal() < 0) {
            return ApiResult.fail("您还没有标签");
        }
        return ApiResult.buildPagination(pageInfo.getTotal(), pageInfo.getList());
    }

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
        List<BlogTagEntity> tags = tagService.queryByUserId(SessionContext.getCurrentUser().getId());
        Preconditions.checkArgument(tags.size() < 101, "个人标签不能超过100个");
        Preconditions.checkArgument(StringUtils.isNotBlank(tag.getName()), "标签名不能为空");
        Preconditions.checkArgument(StringUtils.isNotBlank(tag.getDesc()), "标签描述不能为空");
        Preconditions.checkNotNull(SessionContext.getCurrentUser(), "当前用户不存在");
        Preconditions.checkArgument(SessionContext.getCurrentUser().getId() > 0, "当前用户不合法");
    }

    @RequestMapping(value = "deleteTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult deleteTag(@RequestParam("tagId[]") List<Integer> tagIds) {
        List<Integer> list = tagIds.stream()
                .filter(integer -> integer != null)
                .filter(tagId -> {
                    Preconditions.checkArgument(tagService.countTagUse(tagId) == 0, "您选中的标签有使用中的标签");
                    return true;
                })
                .collect(Collectors.toList());
        Preconditions.checkArgument(list.size() > 0, "您选中的标签数量为0");

        tagService.deleteTag(list);
        return ApiResult.succ();
    }
}
