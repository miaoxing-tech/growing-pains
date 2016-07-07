package com.growing.pains.main.web.auth.flow;

import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: miaoxing
 * DATE:    16/7/7
 */
public class UriAuthFlow implements HttpAuthFlow {
    @Override
    public boolean support(AuthResult result) {
        return result.getSuccess() == null;
    }

    @Override
    public AuthResult auth(AuthResult authResult, HttpServletRequest request,
                           HttpServletResponse response, HandlerMethod handlers) {
        // TODO:未来增加角色及uri权限时使用
        return authResult;
    }
}
