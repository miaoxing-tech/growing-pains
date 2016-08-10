package com.growing.pains.service.system;

import com.google.common.base.Preconditions;
import com.growing.pains.dao.system.UserDao;
import com.growing.pains.model.entity.system.UserEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
@Service
public class UserService {

    @Resource
    private UserDao userDao;

    public UserEntity queryUserByUserName(String userName) {
        Preconditions.checkArgument(StringUtils.isNotBlank(userName), "用户名不能为空");
        return userDao.selectByUserName(userName);
    }

    public UserEntity queryUserByUserId(int userId) {
        Preconditions.checkArgument(userId > 0, "用户id不合法");
        return userDao.selectById(userId);
    }

    public int countTotalUser() {
        return userDao.countUser();
    }

}
