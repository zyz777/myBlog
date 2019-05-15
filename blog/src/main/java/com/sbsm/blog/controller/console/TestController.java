package com.sbsm.blog.controller.console;

import com.sbsm.blog.controller.BaseController;
import com.sbsm.blog.entity.console.Test;
import com.sbsm.blog.service.console.TestService;
import com.sbsm.blog.vo.ResultBean;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/console/test")
public class TestController  extends BaseController  {

    @Autowired
    private TestService testService;

    @RequestMapping("/test2/findAll")
    public ResultPage findAll() {
        List<Test> all = testService.findAll(null);
        return new ResultPage(all);
    }

}
