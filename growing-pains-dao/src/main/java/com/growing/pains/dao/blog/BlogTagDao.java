package com.growing.pains.dao.blog;

import com.growing.pains.model.entity.blog.BlogTagEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Repository
public interface BlogTagDao {

    int insert(@Param("entity") BlogTagEntity entity);

    int update(@Param("entity") BlogTagEntity entity);

    void delete(@Param("id") int tagId);

}
