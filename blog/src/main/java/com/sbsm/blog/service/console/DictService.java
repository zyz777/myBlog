package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.DictDao;
import com.sbsm.blog.entity.console.Dict;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.vo.ResultPage;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class DictService extends BaseService<Dict> {

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

    public Dict findOneByTypeAndLabel(String type, String label) {
        if (StringUtils.isBlank(type) || StringUtils.isBlank(label)) {
            return null;
        }
        Dict dict = new Dict();
        dict.setType(type);
        dict.setLabel(label);

        return this.findOne(dict);
    }

    public Dict findOne(Dict dict) {
        Optional<Dict> one = dictDao.findOne(dict);
        return one.orElse(null);
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
