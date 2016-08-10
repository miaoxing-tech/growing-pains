package com.growing.pains.dao.blog;

import com.growing.pains.model.entity.blog.BlogTagEntity;
import com.growing.pains.model.param.BlogTagParam;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Repository
public interface BlogTagDao {

    int insert(@Param("entity") BlogTagEntity entity);

    int update(@Param("entity") BlogTagEntity entity);

    void delete(@Param("tagIds") List<Integer> tagIds);

    List<BlogTagEntity> queryPageByParam(@Param("param") BlogTagParam param);

    List<BlogTagEntity> queryByParam(@Param("param") BlogTagParam param);

    int countByParam(@Param("param") BlogTagParam param);

}
