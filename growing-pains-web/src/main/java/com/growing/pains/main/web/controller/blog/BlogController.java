package com.growing.pains.main.web.controller.blog;

import com.github.pagehelper.PageInfo;
import com.google.common.base.Preconditions;
import com.growing.pains.common.result.ApiResult;
import com.growing.pains.main.web.auth.annotation.Auth;
import com.growing.pains.main.web.auth.annotation.Authority;
import com.growing.pains.main.web.auth.context.SessionContext;
import com.growing.pains.model.entity.blog.BlogContentEntity;
import com.growing.pains.model.entity.blog.BlogContentTagEntity;
import com.growing.pains.model.entity.blog.BlogTagEntity;
import com.growing.pains.model.entity.system.UserEntity;
import com.growing.pains.model.param.BlogParam;
import com.growing.pains.model.param.BlogTagParam;
import com.growing.pains.model.vm.blog.BlogVm;
import com.growing.pains.service.blog.BlogService;
import com.growing.pains.service.blog.BlogTagService;
import com.growing.pains.service.system.UserService;
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
 * DATE:    16/7/11
 */
@Controller
@RequestMapping("blog")
public class BlogController {

    @Resource
    private BlogService blogService;

    @Resource
    private BlogTagService tagService;

    @Resource
    private UserService userService;

    private static final int NEWEST_LIST_SIZE = 10;

    @RequestMapping(value = "addPage", method = RequestMethod.GET)
    public ModelAndView addPage() {
        List<BlogTagEntity> list = tagService.queryByUserId(SessionContext.getCurrentUser().getId());
        return new ModelAndView("blog/add").addObject("tags", list);
    }

    @RequestMapping(value = "listPage", method = RequestMethod.GET)
    public ModelAndView listPage() {
        return new ModelAndView("blog/list");
    }

    @RequestMapping(value = "updatePage", method = RequestMethod.GET)
    public ModelAndView updatePage(@RequestParam("blogId") int blogId) {
        BlogContentEntity blog = getBlogById(blogId);
        List<BlogContentTagEntity> blogTagList = blogService.queryTagByContentId(blogId);
        List<Integer> blogTagIdList = blogTagList.stream()
                .map(BlogContentTagEntity::getBlogTagId)
                .collect(Collectors.toList());
        List<BlogTagEntity> tagList = tagService.queryByUserId(SessionContext.getCurrentUser().getId());

        return new ModelAndView("blog/update")
                .addObject("blog", blog)
                .addObject("tags", tagList)
                .addObject("blogTags", blogTagIdList);
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "viewPage", method = RequestMethod.GET)
    public ModelAndView viewPage(@RequestParam("blogId") int blogId) {
        return new ModelAndView("blog/view")
                .addObject("blogId", blogId);
    }

    private BlogContentEntity getBlogById(int blogId) {
        Preconditions.checkArgument(blogId > 0, "博客id不合法");

        BlogParam param = new BlogParam();
        param.setId(blogId);
        param.setUserId(SessionContext.getCurrentUser().getId());
        List<BlogContentEntity> entities = blogService.queryByParam(param);

        Preconditions.checkArgument(!CollectionUtils.isEmpty(entities), "您没有此id的博客");
        Preconditions.checkArgument(entities.size() == 1, "系统错误, 此id有多个博客");
        return entities.get(0);
    }

    @RequestMapping(value = "myBlogList", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult myBlogList(BlogParam param) {
        checkPageInfo(param);
        param.setUserId(SessionContext.getCurrentUser().getId());
        PageInfo<BlogContentEntity> pageInfo = blogService.queryPageByParam(param);
        if (pageInfo.getTotal() < 0) {
            return ApiResult.fail("您还没有博客");
        }
        return ApiResult.buildPagination(pageInfo.getTotal(), pageInfo.getList());
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "blogList", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult blogList(BlogParam param) {
        checkPageInfo(param);
        UserEntity user = userService.queryUserByUserName(param.getUserName());
        checkUser(user);

        param.setUserId(user.getId());
        PageInfo<BlogContentEntity> pageInfo = blogService.queryPageByParam(param);
        if (pageInfo.getTotal() < 0) {
            return ApiResult.fail("此用户还没有博客");
        }

        List<BlogVm> vms = pageInfo.getList().stream()
                .map(blogContentEntity -> {
                    BlogVm vm = new BlogVm();
                    vm.setBlogContentEntity(blogContentEntity);
                    vm.setBlogTagEntityList(getTagsFromBlogId(blogContentEntity.getId()));
                    return vm;
                }).collect(Collectors.toList());

        return ApiResult.buildPagination(pageInfo.getTotal(), vms);
    }

    @RequestMapping(value = "addBlog", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult addBlog(BlogContentEntity blog,
                             @RequestParam(value = "tagId[]", required = false) List<Integer> tagIds) {
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
        checkUser(SessionContext.getCurrentUser());
    }

    private void checkUser(UserEntity user) {
        Preconditions.checkNotNull(user, "当前用户不存在");
        Preconditions.checkArgument(user.getId() > 0, "当前用户不合法");
    }

    private void checkPageInfo(BlogParam param) {
        Preconditions.checkArgument(param.getPageNum() != null && param.getPageNum() > 0, "页数不合法");
        Preconditions.checkArgument(param.getPageSize() != null && param.getPageSize() > 0, "每页数量不合法");
    }

    @RequestMapping(value = "updateBlogTag", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult updateBlogTag(@RequestParam("tagIds") List<Integer> tagIds,
                                   @RequestParam("blogContentId") int blogContentId) {
        Preconditions.checkArgument(blogContentId > 0, "博文id不合法");
        blogService.updateBlogTag(tagIds, blogContentId);
        return ApiResult.succ();
    }

    @RequestMapping(value = "deleteBlog", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult updateBlog(@RequestParam("blogId") int blogId) {
        Preconditions.checkArgument(blogId > 0, "博文id不合法");
        checkUser(SessionContext.getCurrentUser());
        blogService.deleteBlog(blogId, SessionContext.getCurrentUser().getId());
        return ApiResult.succ();
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "getSingleBlog", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult<BlogContentEntity> getSingleBlog(@RequestParam("blogId") int blogId) {
        Preconditions.checkArgument(blogId > 0, "博文id不合法");
        BlogContentEntity blog = getBlogById(blogId);
        Preconditions.checkNotNull(blog, "您查询的博客不存在");
        return ApiResult.succ(blog);
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "getSingleBlogTags", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult<List<BlogTagEntity>> getSingleBlogTags(@RequestParam("blogId") int blogId) {
        return ApiResult.succ(getTagsFromBlogId(blogId));
    }

    private List<BlogTagEntity> getTagsFromBlogId(int blogId) {
        Preconditions.checkArgument(blogId > 0, "博文id不合法");
        List<BlogContentTagEntity> blogTagList = blogService.queryTagByContentId(blogId);
        return blogTagList.stream()
                .map(entity -> {
                    BlogTagParam param = new BlogTagParam();
                    param.setId(entity.getBlogTagId());
                    List<BlogTagEntity> entities = tagService.queryByParam(param);
                    if (CollectionUtils.isEmpty(entities)) {
                        return null;
                    }
                    return entities.get(0);
                })
                .filter(blogTagEntity -> blogTagEntity != null)
                .collect(Collectors.toList());
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "newestBlogList", method = RequestMethod.GET)
    @ResponseBody
    public ApiResult<List<BlogVm>> newestBlogList() {
        List<BlogContentEntity> entities = blogService.queryNewestBlogList(NEWEST_LIST_SIZE);
        List<BlogVm> vms = entities.stream()
                .map(blogContentEntity -> {
                    BlogVm vm = new BlogVm();
                    vm.setBlogContentEntity(blogContentEntity);
                    UserEntity user = userService.queryUserByUserId(blogContentEntity.getUserId());
                    Preconditions.checkNotNull(user, "用户不存在");
                    vm.setUserName(user.getUserName());
                    return vm;
                }).collect(Collectors.toList());
        return ApiResult.succ(vms);
    }
}
