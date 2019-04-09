package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Category;
import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.service.console.CategoryService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 分类管理
 */
@RestController
@RequestMapping("/console/category")
public class CategoryController extends BaseController {
    
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/findAll")
    public ResultBean findAll() {
        List<Category> list = categoryService.findAll(new Category());
        ResultBean rs = new ResultBean(list);
        return rs;
    }

    @RequestMapping("/findPage")
    public ResultPage<Category> findPage(int page, int limit) {
        log.info("page = " + page + ", limit = " + limit);
        page--;
        ResultPage<Category> rp = categoryService.findPage(page, limit, new Category());
        return rp;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResultBean<Category> save(@RequestBody Category category) {
        categoryService.save(category);
        return new ResultBean<>(new Category(category.getId()));
    }

    /**
     * 删除
     * @param id
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ResultBean delete(@PathVariable("id") Integer id) {
        categoryService.delete(id);
        return new ResultBean<>();
    }

    /**
     * 删除多条
     * @param ids
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResultBean deleteMore(@RequestBody Integer[] ids) {
        categoryService.deleteMore(ids);
        return new ResultBean<>();
    }
    
    
}
