package com.growing.pains.main.web.auth.flow;

import com.google.common.collect.Maps;
import com.growing.pains.model.entity.system.UserEntity;
import com.growing.pains.service.system.UserService;
import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

import static com.growing.pains.common.context.ConstantContext.USERNAME_COOKIE;

/**
 * @author: miaoxing
 * DATE:    16/7/7
 */
public class InitAuthFlow implements HttpAuthFlow {

    private UserService userService;

    public InitAuthFlow(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean support(AuthResult result) {
        return result.getSuccess() == null;
    }

    @Override
    public AuthResult auth(AuthResult authResult, HttpServletRequest request,
                           HttpServletResponse response, HandlerMethod handler) {
        Map<String, String> cookies = getCookies(request);
        authResult.setCookies(cookies);
        authResult.setUser(getUser(userService, cookies));
        return authResult;
    }

    private Map<String, String> getCookies(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        Map<String, String> cookieMap = Maps.newHashMap();
        if (cookies != null && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                cookieMap.put(cookie.getName(), cookie.getValue());
            }
        }
        return cookieMap;
    }

    private UserEntity getUser(UserService userService, Map<String, String> cookies) {
        if (!cookies.containsKey(USERNAME_COOKIE)) {
            return UserEntity.getGuest();
        }

        UserEntity user = userService.queryUserByUserName(cookies.get(USERNAME_COOKIE));
        return user == null ? UserEntity.getGuest() : user;
    }
}
