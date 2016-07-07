package com.growing.pains.main.web.auth.flow;

import com.growing.pains.model.entity.system.UserEntity;

import java.util.Map;

/**
 * 贯穿一次权限验证的上下文信息
 * 提供验证状态信息，身份信息
 *
 * @author: miaoxing
 * DATE:    16/7/6
 */
public class AuthResult {

    private UserEntity user;

    private Map<String, String> cookies;

    private Boolean success;

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public Map<String, String> getCookies() {
        return cookies;
    }

    public void setCookies(Map<String, String> cookies) {
        this.cookies = cookies;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }
}
