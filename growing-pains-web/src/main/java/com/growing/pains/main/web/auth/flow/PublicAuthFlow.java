package com.growing.pains.main.web.auth.flow;

import com.growing.pains.main.web.auth.annotation.Auth;
import com.growing.pains.main.web.auth.annotation.Authority;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * @author: miaoxing
 * DATE:    16/7/7
 */
public class PublicAuthFlow implements HttpAuthFlow {

    final private Logger logger = LoggerFactory.getLogger(PublicAuthFlow.class);

    @Override
    public boolean support(AuthResult result) {
        return result.getSuccess() == null;
    }

    @Override
    public AuthResult auth(AuthResult authResult, HttpServletRequest request,
                           HttpServletResponse response, HandlerMethod handler) {
        Method method = handler.getMethod();
        logger.info("interceptor method -- {}", method);
        Authority authority = method.getAnnotation(Authority.class);
        if (authority != null && authority.value() == Auth.PUBLIC) {
            authResult.setSuccess(true);
        }
        return authResult;
    }
}
