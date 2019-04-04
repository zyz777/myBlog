package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleDao;
import com.sbsm.blog.entity.console.Article;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.BooleanUtil;
import com.sbsm.blog.utils.JsonUtil;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArticleService extends BaseService {

    @Autowired
    private ArticleDao articleDao;

    public Article get(Article article) {
        return new Article();
    }

    public void save(Article article) {
        article.setIsComment(BooleanUtil.valueOfOrDefault(article.getIsComment(), true));
        article.setIsRecommend(BooleanUtil.valueOfOrDefault(article.getIsRecommend(), false));
        article.setIsTop(BooleanUtil.valueOfOrDefault(article.getIsTop(), false));
    }

    public ResultPage<Article> findDraftPage(int page, int limit, Article article) {
        List<Article> draftList = findDraftList(page, limit, article);
        int count = countByIsDraftAndDelFlag(true, false);
        ResultPage<Article> rp = new ResultPage<>(draftList);
        rp.setTotalCount(count);
        return rp;
    }


    public List<Article> findDraftList(int page, int limit, Article article) {
        return articleDao.findDraftList(page*limit, limit, article);
    }

    public int countByIsDraftAndDelFlag(boolean isDraft, boolean isDel) {
        return articleDao.countByIsDraftAndDelFlag(isDraft, isDel);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveDraft(Article article) {
        if (article.getId() == null) {
            log.info("insert");
            article.preInsert();
            articleDao.insert(article);
        } else {
            log.info("update");
            article.preUpdate();
            articleDao.updateContent(article);
        }
    }
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveArticleInfo(Article article) {
        article.preUpdate();
        articleDao.update(article);
    }
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateIsDraft(Integer id, boolean isDraft) {
        articleDao.updateIsDraft(id, isDraft);
    }

    public void delete(Integer id) {
        articleDao.delete(id);
    }
}
