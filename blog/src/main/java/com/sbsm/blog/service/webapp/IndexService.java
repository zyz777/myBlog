package com.sbsm.blog.service.webapp;

import com.sbsm.blog.entity.console.ArticleDraft;
import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.service.console.ArticleDraftService;
import com.sbsm.blog.service.console.ArticleReleaseService;
import com.sbsm.blog.service.console.TagService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexService extends BaseService {

    @Autowired
    private ArticleReleaseService articleReleaseService;
    @Autowired
    private ArticleDraftService articleDraftService;
    @Autowired
    private TagService tagService;

    public ResultPage<ArticleRelease> findArticle(int page, int limit, ArticleRelease articleRelease) {
        ResultPage<ArticleRelease> rp = articleReleaseService.findPage(page, limit, articleRelease);
        return rp;
    }

    public List<Tag> tagCloud() {
        return tagService.findAll(new Tag());
    }

    public ArticleRelease findArticleByArId(String arId) {
        ArticleRelease articleRelease = new ArticleRelease();
        articleRelease.setArId(arId);
        ArticleRelease one = articleReleaseService.findOne(articleRelease);
        return one;
    }

    public ArticleDraft findDraftArticleByArId(String arId) {
        ArticleDraft articleDraft = new ArticleDraft();
        articleDraft.setArId(arId);
        ArticleDraft one = articleDraftService.findOne(articleDraft);
        return one;
    }
}
