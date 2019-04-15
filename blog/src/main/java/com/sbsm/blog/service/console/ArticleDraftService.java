package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleDraftDao;
import com.sbsm.blog.entity.console.*;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.ConstantUtil;
import com.sbsm.blog.vo.ResultPage;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
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
    @Autowired
    private ArticleReleaseService articleReleaseService;
    @Autowired
    private ArticleVersionService articleVersionService;
    @Autowired
    private DictService dictService;

    /**
     * 获得文件的访问网址前缀
     * @return
     */
    private String getFileCallPrefixPath(ArticleDraft articleDraft) {
        //访问路径前缀
        Dict dict = dictService.findOneByTypeAndLabel("file_call_path", "file_call_path");
        String value = dict.getValue();

        articleDraft.setImgCallPrefixPath(value);
        return value;
    }

    public ArticleDraft findOne(Integer id) {
        if (id == null) {
            return null;
        }
       return findOne(new ArticleDraft(id));
    }

    public ArticleDraft findOne(ArticleDraft articleDraft) {
        getFileCallPrefixPath(articleDraft);
        Optional<ArticleDraft> one = articleDraftDao.findOne(articleDraft);
        return one.orElse(null);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveContent(ArticleDraft articleDraft) {
        String content = "创建草稿, 并新增文章 Markdown 内容";
        ArticleDraft one = findOne(articleDraft.getId());
        if (one == null) {
            articleDraft.preInsert();
            articleDraft.setIsNew(true);
            articleDraftDao.insert(articleDraft);
        } else {
            content = "修改文章 Markdown 内容";
            articleDraft.preUpdate();
            articleDraftDao.updateContent(articleDraft);
        }

        logService.save(ConstantUtil.ARTICLE, articleDraft.getArId(), content);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveInfo(ArticleDraft articleDraft) {
        articleDraftDao.update(articleDraft);
        articleDraftDao.deleteArticleTagMapping(articleDraft.getArId());
        String[] tids = articleDraft.getTids();
        if (ArrayUtils.isNotEmpty(tids)) {
            for (String tid : tids) {
                articleDraftDao.saveArticleTagMapping(articleDraft.getArId(), tid);
            }
        }
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
        getFileCallPrefixPath(articleDraft);
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
        articleDraftDao.logicDelete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            articleDraftDao.logicDelete(id);
        }
    }

    /**
     * 发表文章
     * @param articleVersion
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void releaseArticle(ArticleVersion articleVersion) {
        if (StringUtils.isBlank(articleVersion.getArId())
                || StringUtils.isBlank(articleVersion.getVersion())
                || StringUtils.isBlank(articleVersion.getContent())) {
            return;
        }

        //todo 1. 根据 arId 查询  draft表
        ArticleDraft articleDraft = new ArticleDraft();
        articleDraft.setArId(articleVersion.getArId());
        articleDraft = this.findOne(articleDraft);
        if (articleDraft == null) {
            return;
        }
        //todo 2. 根据 isNew 判断， release表不存在，则把draft表的数据插入，如果存在，就更新版本号和内容，标题等
        Boolean isNew = articleDraft.getIsNew();
        articleReleaseService.saveFromDraft(articleDraft, articleVersion.getVersion(),
                Boolean.TRUE.equals(isNew) ? ConstantUtil.INSERT : ConstantUtil.UPDATE);
        //todo 3. 新增 version表的数据
        articleVersion.setId(null);
        articleVersionService.save(articleVersion);

        //todo 4. 物理删除 draft
        articleDraftDao.delete(articleDraft.getId());
    }


}
