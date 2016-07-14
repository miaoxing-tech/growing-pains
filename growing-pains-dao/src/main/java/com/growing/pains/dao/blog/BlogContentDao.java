package com.growing.pains.dao.blog;

import com.growing.pains.model.entity.blog.BlogContentEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Repository
public interface BlogContentDao {

    int insert(@Param("entity") BlogContentEntity entity);

    int update(@Param("entity") BlogContentEntity entity);

}
