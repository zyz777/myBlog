package com.sbsm.blog.controller.webapp;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.ArticleDraft;
import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.webapp.IndexService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/webapp/index/")
public class IndexController extends BaseController {

    @Autowired
    private IndexService indexService;

    @RequestMapping("/findArticle")
    public ResultPage<ArticleRelease> findArticle(int pageNo, int pageSize, ArticleRelease articleRelease) {
        log.info("page = " + pageNo + ", limit = " + pageSize);
        pageNo--;
        ResultPage<ArticleRelease> rp = indexService.findArticle(pageNo, pageSize, articleRelease);
        return rp;
    }

    @RequestMapping(value = "/tagCloud", method = RequestMethod.GET)
    public ResultBean tagCloud() {
        List<Tag> list = indexService.tagCloud();
        return new ResultBean(list);
    }

    @RequestMapping(value = "/get/{arId}", method = RequestMethod.GET)
    public ResultBean<ArticleRelease> findArticleByArId(@PathVariable("arId") String arId) {
        ArticleRelease article = indexService.findArticleByArId(arId);
        if (article == null) {
            return new ResultBean<>().setCode(ResultBean.FAIL).setMsg("文章不存在");
        }
        return new ResultBean<>(article);
    }

    @RequestMapping(value = "/getDraft/{arId}", method = RequestMethod.GET)
    public ResultBean<ArticleDraft> findDraftArticleByArId(@PathVariable("arId") String arId) {
        ArticleDraft article = indexService.findDraftArticleByArId(arId);
        if (article == null) {
            return new ResultBean<>().setCode(ResultBean.FAIL).setMsg("文章不存在");
        }
        return new ResultBean<>(article);
    }

}
