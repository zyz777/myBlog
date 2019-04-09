package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.ArticleDraft;
import com.sbsm.blog.entity.console.ArticleVersion;
import com.sbsm.blog.service.console.ArticleDraftService;
import com.sbsm.blog.utils.JsonUtil;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/console/articleDraft")
public class ArticleDraftController extends BaseController {

    @Autowired
    private ArticleDraftService articleDraftService;

    /**
     * 保存草稿的 markdown 内容
     * @param articleDraft
     */
    @RequestMapping(value = "/saveContent", method = RequestMethod.POST)
    public ResultBean saveContent(@RequestBody ArticleDraft articleDraft) {
        articleDraftService.saveContent(articleDraft);
        articleDraft.setContent(null);
        return new ResultBean<>(articleDraft);
    }

    /**
     * 保存文章信息(除内容之外)
     * @param articleDraft
     * @return
     */
    @RequestMapping(value = "/saveInfo", method = RequestMethod.POST)
    public ResultBean saveInfo(@RequestBody ArticleDraft articleDraft) {
        if (articleDraft.getId() == null) {
            return new ResultBean<>().setCode(-1).setMsg("文章id不能为空");
        }
        articleDraftService.saveInfo(articleDraft);
        return new ResultBean<>();
    }


    /**
     * 草稿箱列表
     * @return
     */
    @RequestMapping("/findPage")
    public ResultPage<ArticleDraft> findPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<ArticleDraft> rp = articleDraftService.findPage(page, limit, new ArticleDraft());
        return rp;
    }

    /**
     * 删除文章
     * @param id
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ResultBean delete(@PathVariable("id") Integer id) {
        articleDraftService.delete(id);
        return new ResultBean<>();
    }

    /**
     * 删除多篇文章
     * @param ids
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResultBean deleteMore(@RequestBody Integer[] ids) {
        articleDraftService.deleteMore(ids);
        return new ResultBean<>();
    }

    @RequestMapping(value = "/releaseArticle", method = RequestMethod.POST)
    public ResultBean releaseArticle(@RequestBody ArticleVersion articleVersion) {
        log.info(JsonUtil.toJson(articleVersion));
        articleDraftService.releaseArticle(articleVersion);
        return new ResultBean<>();
    }

}
