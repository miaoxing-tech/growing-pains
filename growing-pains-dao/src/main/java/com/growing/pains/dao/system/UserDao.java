package com.growing.pains.dao.system;

import com.growing.pains.model.entity.system.UserEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
@Repository
public interface UserDao {
    UserEntity selectByUserName(@Param("userName") String userName);
}
