package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Article;
import com.sbsm.blog.service.console.ArticleService;
import com.sbsm.blog.utils.JsonUtil;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/console/article")
public class ArticleController extends BaseController {

    @Autowired
    private ArticleService articleService;

    @ModelAttribute("get")
    public Article get(@RequestParam(value = "id", required = false) Integer id) {
        if (id == null) {
            return new Article();
        }
        return new Article();
    }

    /**
     * 保存草稿
     * @param article
     */
    @RequestMapping("/saveDraft")
    public ResultBean saveDraft(@RequestBody Article article) {
        log.info(JsonUtil.toJson(article));

        article.setIsDraft(true);
        articleService.saveDraft(article);

        return new ResultBean<>(new Article(article.getId()));
    }

    /**
     * 发表文章
     * @param article
     */
    @RequestMapping("/save")
    public void save(@ModelAttribute("get") @RequestBody Article article) {
        log.info(JsonUtil.toJson(article));

        article.setIsDraft(false);
        articleService.save(article);
    }

    /**
     * 草稿箱列表
     * @return
     */
    @RequestMapping("/findDraftPage")
    public ResultPage<Article> findDraftPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<Article> rp = articleService.findDraftPage(page*limit, limit, new Article());
        return rp;
    }

}
