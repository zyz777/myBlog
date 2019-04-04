package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.vo.ResultBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/console/tag")
public class TagController extends BaseController {

    /**
     * 
     */
    @RequestMapping("/findAll")
    public ResultBean findAll() {
        List<Tag> list = new ArrayList<>();

        list.add(new Tag("write", "写作"));
        list.add(new Tag("read", "阅读"));
        list.add(new Tag("game", "游戏"));
        list.add(new Tag("1", "layer"));
        list.add(new Tag("2", "form"));
        list.add(new Tag("3", "layim"));
        list.add(new Tag("4", "element"));
        list.add(new Tag("5", "laytpl"));
        list.add(new Tag("6", "upload"));
        list.add(new Tag("7", "laydate"));
        list.add(new Tag("8", "laypage"));
        list.add(new Tag("9", "flow"));
        list.add(new Tag("10", "util"));

        ResultBean rs = new ResultBean(list);
        return rs;
    }
    
}
