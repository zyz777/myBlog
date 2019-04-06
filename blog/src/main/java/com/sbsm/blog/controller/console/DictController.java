package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.service.console.DictService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/console/dict")
public class DictController extends BaseController {

    @Autowired
    private DictService dictService;

    /**
     * 字典列表
     * @return
     */
    @RequestMapping("/findPage")
    public ResultPage<Dict> findPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<Dict> rp = dictService.findPage(page, limit, new Dict());
        return rp;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResultBean<Dict> save(@RequestBody Dict dict) {
        dictService.save(dict);
        return new ResultBean<>(new Dict(dict.getId()));
    }


    /**
     * 删除文章
     * @param id
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ResultBean delete(@PathVariable("id") Integer id) {
        dictService.delete(id);
        return new ResultBean<>();
    }

    /**
     * 删除多篇文章
     * @param ids
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResultBean deleteMore(@RequestBody Integer[] ids) {
        dictService.deleteMore(ids);
        return new ResultBean<>();
    }

}
