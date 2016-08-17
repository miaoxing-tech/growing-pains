package com.growing.pains.dao.system;

import com.growing.pains.model.entity.system.InvitationCodeEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
@Repository
public interface InvitationCodeDao {
    int insert(@Param("entity") InvitationCodeEntity entity);

    InvitationCodeEntity selectByCode(@Param("code") String code);

    int updateState(@Param("id") int id, @Param("state") int state);
}
