package com.growing.pains.service.system;

import com.google.common.base.Preconditions;
import com.growing.pains.common.utils.InvitationCodeUtil;
import com.growing.pains.dao.system.InvitationCodeDao;
import com.growing.pains.model.entity.system.InvitationCodeEntity;
import com.growing.pains.model.enums.InvitationCodeState;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: miaoxing
 * DATE:    16/8/15
 */
@Service
public class InvitationCodeService {

    @Resource
    private InvitationCodeDao invitationCodeDao;

    public void invalidateInvitationCode(int id) {
        int index = invitationCodeDao.updateState(id, InvitationCodeState.INVALID.getCode());
        Preconditions.checkArgument(index > 0, "邀请码使用失败, 请联系管理员处理");
    }

    public InvitationCodeEntity getByCode(String code) {
        return invitationCodeDao.selectByCode(code);
    }

    public void addInvitationCode() {
        String code = getNewInvitationCode();
        InvitationCodeEntity entity = new InvitationCodeEntity();
        entity.setCode(code);

        int index = invitationCodeDao.insert(entity);
        Preconditions.checkArgument(index > 0, "邀请码插入失败");
    }

    private String getNewInvitationCode() {
        String code = InvitationCodeUtil.generateShortUuid();
        InvitationCodeEntity entity = getByCode(code);
        while (entity != null) {
            code = InvitationCodeUtil.generateShortUuid();
            entity = getByCode(code);
        }
        return code;
    }

}
