package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.service.console.ArticleReleaseService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/console/articleRelease")
public class ArticleReleaseController extends BaseController {

    @Autowired
    private ArticleReleaseService articleReleaseService;

    @RequestMapping("/findPage")
    public ResultPage<ArticleRelease> findPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<ArticleRelease> rp = articleReleaseService.findPage(page, limit, new ArticleRelease());
        return rp;
    }

    /**
     * 更新 isComment  isRecommend  isTop
     * @param field
     * @param id
     * @param result
     * @return
     */
    @RequestMapping(value = "/updateBoolean", method = RequestMethod.POST)
    public ResultBean updateBoolean( @RequestParam("field") String field,
            @RequestParam("id") Integer id, @RequestParam("result") Boolean result) {
        articleReleaseService.updateBoolean(id, field, result);
        return new ResultBean();
    }

}
