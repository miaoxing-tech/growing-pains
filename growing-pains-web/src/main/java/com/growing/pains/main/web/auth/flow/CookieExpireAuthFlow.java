package com.growing.pains.main.web.auth.flow;

import com.growing.pains.main.utils.UserCookieUtil;
import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.growing.pains.common.context.ConstantContext.USERNAME_COOKIE;
import static com.growing.pains.common.context.ConstantContext.USERNAME_TIME_COOKIE;

/**
 * @author: miaoxing
 * DATE:    16/7/7
 */
public class CookieExpireAuthFlow implements HttpAuthFlow {
    @Override
    public boolean support(AuthResult result) {
        return result.getSuccess() == null;
    }

    @Override
    public AuthResult auth(AuthResult authResult, HttpServletRequest request,
                           HttpServletResponse response, HandlerMethod handler) {
        //cookie过期销毁,未过期则拥有权限
        if (authResult.getCookies().containsKey(USERNAME_COOKIE)) {
            String username = authResult.getCookies().get(USERNAME_COOKIE);
            if (!UserCookieUtil.getUsernameTime(username).equals(authResult.getCookies().get(USERNAME_TIME_COOKIE))) {
                UserCookieUtil.deleteUserCookie(response);
                authResult.setSuccess(false);
            }
        } else {
            authResult.setSuccess(false);
        }
        return authResult;
    }
}
