package com.growing.pains.main.web.auth.context;

import com.growing.pains.model.entity.system.UserEntity;

/**
 * @author: miaoxing
 * DATE:    16/7/10
 */
public class SessionContext {
    /**
     * 查看当前用户
     *
     * @return
     */
    public static UserEntity getCurrentUser() {
        return (UserEntity) PermissionContext.getFromCurrent(PermissionContextKey.CURRENT_USER, false);
    }
}
