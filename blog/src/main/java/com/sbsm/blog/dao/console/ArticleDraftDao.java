package com.sbsm.blog.dao.console;

import com.sbsm.blog.dao.BaseDao;
import com.sbsm.blog.entity.console.ArticleDraft;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleDraftDao extends BaseDao<ArticleDraft> {
    void updateContent(ArticleDraft articleDraft);

    void logicDelete(Integer id);
}
