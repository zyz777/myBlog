package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.DictDao;
import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DictService extends BaseService {

    @Autowired
    private DictDao dictDao;


    public ResultPage<Dict> findPage(int page, int limit, Dict dict) {
        List<Dict> list = dictDao.findPage(page * limit, limit, dict);
        int count = countByDelFlag(false);
        ResultPage<Dict> rp = new ResultPage<>(list);
        rp.setTotalCount(count);
        return rp;
    }

    private int countByDelFlag(boolean isDel) {
        return dictDao.countByDelFlag(isDel);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void save(Dict dict) {
        if (dict.getId() == null) {
            dict.preInsert();
            dictDao.insert(dict);
        } else {
            dict.preUpdate();
            dictDao.update(dict);
        }
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        dictDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            dictDao.delete(id);
        }
    }
}
