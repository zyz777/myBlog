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

   /* @ModelAttribute("get")
    public Article get(@RequestParam(value = "id", required = false) Integer id) {
        if (id == null) {
            return new Article();
        }
        return new Article();
    }*/

    /**
     * 保存草稿的 markdown 内容
     * @param article
     */
    @RequestMapping(value = "/saveDraft", method = RequestMethod.POST)
    public ResultBean saveArticleDraft(@RequestBody Article article) {
        log.info(JsonUtil.toJson(article));

        article.setIsDraft(true);
        articleService.saveDraft(article);

        return new ResultBean<>(new Article(article.getId()));
    }

    /**
     * 保存文章信息(除内容之外)
     * @param article
     * @return
     */
    @RequestMapping(value = "/saveArticleInfo", method = RequestMethod.POST)
    public ResultBean saveArticleInfo(@RequestBody Article article) {
        if (article.getId() == null) {
            return new ResultBean<>().setCode(-1).setMsg("文章id不能为空");
        }
        articleService.saveArticleInfo(article);
        return new ResultBean<>();
    }

    /**
     * 发表文章
     * @param id
     */
    @RequestMapping(value = "/release/{id}", method = RequestMethod.GET)
    public ResultBean release(@PathVariable("id") Integer id) {
        articleService.updateIsDraft(id, false);
        return new ResultBean<>();
    }
    /**
     * 删除文章
     * @param id
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ResultBean delete(@PathVariable("id") Integer id) {
        articleService.delete(id);
        return new ResultBean<>();
    }

    /**
     * 草稿箱列表
     * @return
     */
    @RequestMapping("/findDraftPage")
    public ResultPage<Article> findDraftPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<Article> rp = articleService.findDraftPage(page, limit, new Article());
        return rp;
    }

}
