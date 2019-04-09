package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.console.TagService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/console/tag")
public class TagController extends BaseController {

    @Autowired
    private TagService tagService;
    
    /**
     * 
     */
    @RequestMapping("/findAll")
    public ResultBean findAll() {
        List<Tag> list = tagService.findAll(new Tag());
        ResultBean rs = new ResultBean(list);
        return rs;
    }


    @RequestMapping("/findPage")
    public ResultPage<Tag> findPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<Tag> rp = tagService.findPage(page, limit, new Tag());
        return rp;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResultBean<Tag> save(@RequestBody Tag tag) {
        tagService.save(tag);
        return new ResultBean<>(new Tag(tag.getId()));
    }

    /**
     * 删除
     * @param id
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ResultBean delete(@PathVariable("id") Integer id) {
        tagService.delete(id);
        return new ResultBean<>();
    }

    /**
     * 删除多条
     * @param ids
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResultBean deleteMore(@RequestBody Integer[] ids) {
        tagService.deleteMore(ids);
        return new ResultBean<>();
    }
    
    
}
