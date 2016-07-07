package com.growing.pains.main.web.handler;

import com.growing.pains.common.exception.BusinessException;
import com.growing.pains.common.result.ApiResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.TypeMismatchException;
import org.springframework.core.Ordered;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 全局的异常处理
 *
 * @author: miaoxing
 * DATE:    16/7/4
 */
public class GlobalExceptionHandler implements HandlerExceptionResolver, Ordered {

    private static final Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    /**
     * json接口的view
     */
    private static MappingJackson2JsonView JSON_VIEW = new MappingJackson2JsonView();

    /**
     * 第三位
     * 不加order会排在最后，DefaultHandlerExceptionResolver会吞掉一些异常（如 参数不正确）返回特定的状态码
     *
     * @see org.springframework.web.servlet.config.AnnotationDrivenBeanDefinitionParser
     */
    private int order = 2;

    /**
     * 处理异常
     */
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
                                         Exception ex) {

        String uri = request.getRequestURI();
        ModelAndView modelView = new ModelAndView();
        if (uri.endsWith(".json") || uri.endsWith(".do")) {
            modelView.setView(JSON_VIEW);
            // 参考ApiResult
            modelView.addObject("status", ApiResult.DEFAULT_FAILED_STATUS);
            modelView.addObject("message", ex.getMessage());
        } else {
            modelView.setViewName("error/500");
            modelView.addObject("message", ex.getMessage());
            modelView.addObject("ex", ex);
        }

        //TODO 搞一套上下文存储当前用户信息,用以鉴权
        /*// 获取用户Id
        UserEntity currentUser = SessionContext.getCurrentUser();
        String userName = currentUser == null ? "<null>" : currentUser.getUserName();*/ //区分业务异常

        // 区分业务异常 和 其他未捕获异常
        if (ex instanceof BusinessException) {
            // 处理业务异常
            LOGGER.error("业务异常:{}, 操作人:{}", ex.getMessage(), "userName,暂时为空", ex);
        } else if (ex instanceof MissingServletRequestParameterException || ex instanceof TypeMismatchException) {
            // 参数错误
            modelView.addObject("message", "参数错误");
            LOGGER.error("http参数异常:{}", ex.getMessage(), ex);
        } else {
            // 处理其他未捕获异常
            LOGGER.error("其他未捕获异常:{}, 操作人:{}", ex.getMessage(), "userName,暂时为空", ex);
        }

        return modelView;
    }

    @Override
    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
