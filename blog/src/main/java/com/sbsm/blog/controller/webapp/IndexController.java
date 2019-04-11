package com.sbsm.blog.controller.webapp;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.service.webapp.IndexService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/webapp/index/")
public class IndexController extends BaseController {

    @Autowired
    private IndexService indexService;

    @RequestMapping("/findArticle")
    public ResultPage<ArticleRelease> findArticle(int pageNo, int pageSize) {
        log.info("page = " + pageNo + ", limit = " + pageSize);
        pageNo--;
        ResultPage<ArticleRelease> rp = indexService.findArticle(pageNo, pageSize);
        return rp;
    }

}
