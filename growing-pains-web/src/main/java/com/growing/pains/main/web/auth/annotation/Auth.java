package com.growing.pains.main.web.auth.annotation;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public enum Auth {

    PRIVATE("private"),
    PUBLIC("public"),
    ;

    private final String authName;

    Auth(String authName) {
        this.authName = authName;
    }

    public String getAuthName() {
        return authName;
    }
}
