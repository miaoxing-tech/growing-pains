package com.growing.pains.dao.blog;

import com.growing.pains.model.entity.blog.BlogContentEntity;
import com.growing.pains.model.param.BlogParam;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Repository
public interface BlogContentDao {

    int insert(@Param("entity") BlogContentEntity entity);

    int update(@Param("entity") BlogContentEntity entity);

    int updateState(@Param("id") int blogId, @Param("userId") int userId, @Param("state") int state);

    List<BlogContentEntity> queryPageByParam(@Param("param") BlogParam param);

    List<BlogContentEntity> queryByParam(@Param("param") BlogParam param);

    int countBlog();

    BlogContentEntity selectLastBlog();

    List<BlogContentEntity> selectNewest(@Param("size") int size);
}
