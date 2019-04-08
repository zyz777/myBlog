package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleDao;
import com.sbsm.blog.entity.console.Article;
import com.sbsm.blog.entity.console.Log;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.BooleanUtil;
import com.sbsm.blog.utils.ConstantUtil;
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
public class ArticleService extends BaseService<Article> {

    @Autowired
    private ArticleDao articleDao;

    public Article findOne(Article article) {
        return articleDao.findOne(article).orElse(null);
    }
    public Article findOne(Integer id) {
        return articleDao.findOne(new Article(id)).orElse(null);
    }

    public void save(Article article) {
        article.setIsComment(BooleanUtil.valueOfOrDefault(article.getIsComment(), true));
        article.setIsRecommend(BooleanUtil.valueOfOrDefault(article.getIsRecommend(), false));
        article.setIsTop(BooleanUtil.valueOfOrDefault(article.getIsTop(), false));
    }

    public ResultPage<Article> findDraftPage(int page, int limit, Article article) {
        List<Article> draftList = findDraftList(page, limit, article);
        for (Article a : draftList) {
            List<Log> logs = logService.findAll(new Log(a.getAid(), ConstantUtil.ARTICLE));
            a.setLogs(logs);
        }

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
        String content = "新增草稿文章内容";
        if (article.getId() == null) {
            article.preInsert();
            articleDao.insert(article);
        } else {
            article.preUpdate();
            articleDao.updateContent(article);
            content = "修改草稿文章内容";
        }
        logService.save(ConstantUtil.ARTICLE, article.getAid(), content);
    }
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveArticleInfo(Article article) {
        article.preUpdate();
        articleDao.update(article);
        logService.save(ConstantUtil.ARTICLE, article.getAid(), "保存文章相关信息");
    }

    /**
     * 发表文章
     * @param id
     * @param isDraft
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void release(Integer id, boolean isDraft) {
        Article article = this.findOne(id);
        articleDao.updateIsDraft(article.getId(), isDraft);
        logService.save(ConstantUtil.ARTICLE, article.getAid(), "发表此文章");
    }

    /**
     * 批量发表文章
     * @param ids
     * @param isDraft
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateMoreIsDraft(Integer[] ids, boolean isDraft) {
        List<Article> list = articleDao.findByIds(ids);
        for (Article article : list) {
            articleDao.updateIsDraft(article.getId(), isDraft);
            logService.save(ConstantUtil.ARTICLE, article.getAid(), "发表此文章");
        }
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        articleDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            articleDao.delete(id);
        }
    }
}
