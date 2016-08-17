package com.growing.pains.common.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.concurrent.TimeUnit;

import static com.growing.pains.common.context.ConstantContext.PATH_COOKIE;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public class CookieUtil {

    private static Logger logger = LoggerFactory.getLogger(CookieUtil.class);

    /**
     * cookie最大生命
     */
    private static int COOKIE_MAX_AGE = 5;

    public static void saveCookie(String key, String value, HttpServletResponse response) {
        Cookie cookie = new Cookie(key, value);
        cookie.setMaxAge((int) TimeUnit.DAYS.toSeconds(COOKIE_MAX_AGE));// 设置cookie的保存时间5天
        cookie.setPath(PATH_COOKIE);
        response.addCookie(cookie);
        logger.info("写入cookie，key = {}, value = {}", key, value);
    }

    public static void deleteCookie(String key, HttpServletResponse response) {
        Cookie cookie = new Cookie(key, null);
        cookie.setMaxAge(0);
        cookie.setPath(PATH_COOKIE);
        response.addCookie(cookie);
        logger.info("删除cookie成功, key = {}", key);
    }
}
