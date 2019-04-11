package com.sbsm.blog.service.webapp;

import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.service.console.ArticleReleaseService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexService extends BaseService {

    @Autowired
    private ArticleReleaseService articleReleaseService;

    public ResultPage<ArticleRelease> findArticle(int page, int limit) {
        ResultPage<ArticleRelease> rp = articleReleaseService.findPage(page, limit, new ArticleRelease());
        return rp;
    }
}
