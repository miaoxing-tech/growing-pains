package com.growing.pains.service.system;

import com.google.common.base.Preconditions;
import com.growing.pains.common.utils.MD5Util;
import com.growing.pains.dao.system.UserDao;
import com.growing.pains.model.entity.system.InvitationCodeEntity;
import com.growing.pains.model.entity.system.UserEntity;
import com.growing.pains.model.enums.InvitationCodeState;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
@Service
public class UserService {

    @Resource
    private UserDao userDao;

    @Resource
    private InvitationCodeService invitationCodeService;

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

    @Transactional
    public void register(String userName, String password, String invitationCode) {
        InvitationCodeEntity code = invitationCodeService.getByCode(invitationCode);
        Preconditions.checkNotNull(code, "邀请码不存在。");
        Preconditions.checkArgument(InvitationCodeState.VALID.getCode() == code.getState(), "邀请码已经失效。");

        UserEntity entity = queryUserByUserName(userName);
        Preconditions.checkArgument(entity == null, "用户名已经存在");

        invitationCodeService.invalidateInvitationCode(code.getId());
        saveUser(userName, password);
    }

    private void saveUser(String userName, String password) {
        UserEntity userEntity = new UserEntity();
        userEntity.setUserName(userName);
        userEntity.setPassword(MD5Util.encrypt(password));
        int index = userDao.insert(userEntity);
        Preconditions.checkArgument(index > 0, "注册用户失败, 请联系管理员处理");
    }
}
