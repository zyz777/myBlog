package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.LogDao;
import com.sbsm.blog.entity.console.Log;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LogService extends BaseService<Log> {

    @Autowired
    private LogDao logDao;

    public ResultPage<Log> findPage(int page, int limit, Log log) {
        return null;
    }

    public List<Log> findAll(Log log) {
        return logDao.findAll(log);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void save(String type, String bindId, String content) {
        Log log = new Log();
        log.preInsert();
        log.setType(type);
        log.setBindId(bindId);
        log.setContent(content);
        logDao.insert(log);
    }

}
