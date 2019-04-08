package com.sbsm.blog.dao.console;

import com.sbsm.blog.dao.BaseDao;
import com.sbsm.blog.entity.console.ArticleRelease;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleReleaseDao extends BaseDao<ArticleRelease> {
    void updateBoolean(ArticleRelease articleRelease);
}
