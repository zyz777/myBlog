package com.sbsm.blog.service;

import com.sbsm.blog.entity.console.ArticleDraft;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.console.LogService;
import com.sbsm.blog.vo.ResultPage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BaseService<T> {
    protected Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    protected LogService logService;

    protected final String FILE_CALL_PATH = "file_call_path";
    protected final String UPLOAD_PATH = "upload_path";

    public T findOne(Integer id){
        return null;
    }


    public ResultPage<T> findPage(int page, int limit, T t) {
        return null;
    }

    public List<T> findAll(T t) {
        return null;
    }

}
