package com.growing.pains.dao.blog;

import com.growing.pains.model.entity.blog.BlogContentTagEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Repository
public interface BlogContentTagDao {

    int insert(@Param("entity") BlogContentTagEntity entity);

    void delete(@Param("blogContentTagEntities") List<BlogContentTagEntity> blogContentTagEntities);

    List<BlogContentTagEntity> queryByContentId(@Param("blogContentId") int blogContentId);

    int countByTagId(@Param("tagId") int tagId);

}
