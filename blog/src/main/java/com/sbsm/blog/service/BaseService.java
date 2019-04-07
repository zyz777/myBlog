package com.sbsm.blog.service;

import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.console.LogService;
import com.sbsm.blog.vo.ResultPage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseService<T> {
    protected Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    protected LogService logService;



}
