package com.growing.pains.main.web.auth.annotation;

import java.lang.annotation.*;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
@Documented
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Authority {
    Auth value() default Auth.PUBLIC;
}
