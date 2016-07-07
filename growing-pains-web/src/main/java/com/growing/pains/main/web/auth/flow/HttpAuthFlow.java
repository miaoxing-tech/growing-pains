package com.growing.pains.main.web.auth.flow;

import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 校验流程
 *
 * @author: miaoxing
 * DATE:    16/7/6
 */
public interface HttpAuthFlow {

    /**
     * 当前请求是否适合此校验流程
     *
     * @param result
     * @return
     */
    boolean support(AuthResult result);

    /**
     * 此流程校验方法
     */
    AuthResult auth(AuthResult authResult, HttpServletRequest request,
                    HttpServletResponse response, HandlerMethod handler);
}
