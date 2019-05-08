package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.TestDao;
import com.sbsm.blog.entity.console.Test;
import com.sbsm.blog.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService extends BaseService<Test> {

    @Autowired
    private TestDao testDao;

    @Override
    public List<Test> findAll(Test t) {
        return testDao.findAll(t);
    }
}
