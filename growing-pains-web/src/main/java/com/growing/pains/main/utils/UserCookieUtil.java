package com.growing.pains.main.utils;

import com.growing.pains.common.utils.CookieUtil;
import com.growing.pains.common.utils.MD5Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.util.concurrent.TimeUnit;

import static com.growing.pains.common.context.ConstantContext.USERNAME_COOKIE;
import static com.growing.pains.common.context.ConstantContext.USERNAME_TIME_COOKIE;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public class UserCookieUtil {

    private static Logger logger = LoggerFactory.getLogger(UserCookieUtil.class);

    /**
     * 自动登录时间,实际上是到第n天早上八点过期
     */
    private static int AUTO_LOGIN_DATE = 2;

    public static void saveUserCookie(String userName, HttpServletResponse response) {
        CookieUtil.saveCookie(USERNAME_COOKIE, userName, response);
        CookieUtil.saveCookie(USERNAME_TIME_COOKIE, getUsernameTime(userName), response);
    }

    public static String getUsernameTime(String username) {
        // 设置cookie自动验证时间
        return MD5Util.encrypt(username + System.currentTimeMillis() / TimeUnit.DAYS.toMillis(AUTO_LOGIN_DATE));
    }

    public static void deleteUserCookie(HttpServletResponse response) {
        CookieUtil.deleteCookie(USERNAME_COOKIE, response);
        CookieUtil.deleteCookie(USERNAME_TIME_COOKIE, response);
    }
}
