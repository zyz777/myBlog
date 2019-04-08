package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleDraftDao;
import com.sbsm.blog.entity.console.ArticleDraft;
import com.sbsm.blog.entity.console.ArticleVersion;
import com.sbsm.blog.entity.console.Log;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.ConstantUtil;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ArticleDraftService extends BaseService<ArticleDraft> {

    @Autowired
    private ArticleDraftDao articleDraftDao;

    public ArticleDraft findOne(Integer id) {
        if (id == null) {
            return null;
        }
        Optional<ArticleDraft> one = articleDraftDao.findOne(new ArticleDraft(id));
        return one.orElse(null);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveContent(ArticleDraft articleDraft) {
        String content = "新增文章内容";
        ArticleDraft one = findOne(articleDraft.getId());
        if (one == null) {
            articleDraft.preInsert();
            articleDraft.setIsNew(true);
            articleDraftDao.insert(articleDraft);
        } else {
            content = "修改文章内容";
            articleDraft.preUpdate();
            articleDraftDao.updateContent(articleDraft);
        }

        logService.save(ConstantUtil.ARTICLE, articleDraft.getArId(), content);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveInfo(ArticleDraft articleDraft) {
        articleDraftDao.update(articleDraft);
        logService.save(ConstantUtil.ARTICLE, articleDraft.getArId(), "保存文章信息");
    }

    /**
     * 分页查询
     * @param page
     * @param limit
     * @param articleDraft
     * @return
     */
    public ResultPage<ArticleDraft> findPage(int page, int limit, ArticleDraft articleDraft) {
        List<ArticleDraft> list = articleDraftDao.findPage(page * limit, limit, articleDraft);
        for (ArticleDraft data : list) {
            List<Log> logs = logService.findAll(new Log(data.getArId(), ConstantUtil.ARTICLE));
            data.setLogs(logs);
        }
        int count = countByDelFlag(false);
        ResultPage<ArticleDraft> rp = new ResultPage<>(list);
        rp.setTotalCount(count);
        return rp;
    }

    /**
     * 查询总数
     * @param isDel
     * @return
     */
    private int countByDelFlag(boolean isDel) {
        return articleDraftDao.countByDelFlag(isDel);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        articleDraftDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            articleDraftDao.delete(id);
        }
    }

    /**
     * 发表文章
     * @param articleVersion
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void releaseArticle(ArticleVersion articleVersion) {
        //todo 1. 根据 arId 查询  draft表

        //todo 2. 根据 isNew 判断， release表不存在，则把draft表的数据插入，如果存在，就更新版本号和内容，标题等

        //todo 3. 新增 version表的数据

        //todo 4. 删除 draft

    }
}
