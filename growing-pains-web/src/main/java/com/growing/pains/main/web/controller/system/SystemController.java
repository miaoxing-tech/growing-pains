package com.growing.pains.main.web.controller.system;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.growing.pains.common.result.ApiResult;
import com.growing.pains.common.utils.MD5Util;
import com.growing.pains.main.utils.UserCookieUtil;
import com.growing.pains.main.web.auth.annotation.Auth;
import com.growing.pains.main.web.auth.annotation.Authority;
import com.growing.pains.model.entity.system.UserEntity;
import com.growing.pains.service.system.InvitationCodeService;
import com.growing.pains.service.system.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
@Controller
@RequestMapping("system")
public class SystemController {

    @Resource
    private UserService userService;

    @Resource
    private InvitationCodeService invitationCodeService;

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "login")
    @ResponseBody
    public ApiResult login(@RequestParam("userName") String userName,
                           @RequestParam("password") String password,
                           HttpServletResponse response) {
        Preconditions.checkArgument(StringUtils.isNotBlank(userName), "用户名不能为空");
        Preconditions.checkArgument(StringUtils.isNotBlank(password), "密码不能为空");

        UserEntity user = userService.queryUserByUserName(userName);
        Preconditions.checkNotNull(user, "用户不存在");
        Preconditions.checkArgument(Objects.equal(MD5Util.encrypt(password), user.getPassword()), "密码错误");

        UserCookieUtil.saveUserCookie(userName, response);
        return ApiResult.succ();
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "logout", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult logout(HttpServletResponse response) {
        UserCookieUtil.deleteUserCookie(response);
        return ApiResult.succ();
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "authError")
    public ModelAndView authError() {
        return new ModelAndView("error/authError");
    }

    @Authority(value = Auth.PUBLIC, IPLimit = true)
    @RequestMapping(value = "addInvitationCode", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult addInvitationCode() {
        invitationCodeService.addInvitationCode();
        return ApiResult.succ();
    }

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "register", method = RequestMethod.POST)
    @ResponseBody
    public ApiResult register(@RequestParam("userName") String userName,
                              @RequestParam("password") String password,
                              @RequestParam("invitationCode") String invitationCode) {
        Preconditions.checkArgument(StringUtils.isNotBlank(userName), "用户名不能为空");
        Preconditions.checkArgument(StringUtils.isNotBlank(password), "密码不能为空");

        userService.register(userName, password, invitationCode);
        return ApiResult.succ();
    }
}
