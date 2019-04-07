package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.TagDao;
import com.sbsm.blog.entity.console.Log;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.entity.console.Tag;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.ConstantUtil;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TagService extends BaseService<Tag> {
    
    @Autowired
    private TagDao tagDao;
    
    
    public ResultPage<Tag> findPage(int page, int limit, Tag tag) {
        List<Tag> list = tagDao.findPage(page * limit, limit, tag);
        for (Tag t : list) {
            List<Log> logs = logService.findAll(new Log(t.getTid(), ConstantUtil.TAG));
            t.setLogs(logs);
        }
        int count = countByDelFlag(false);
        ResultPage<Tag> rp = new ResultPage<>(list);
        rp.setTotalCount(count);
        return rp;
    }

    private int countByDelFlag(boolean isDel) {
        return tagDao.countByDelFlag(isDel);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void save(Tag tag) {
        if (tag.getId() == null) {
            tag.preInsert();
            tagDao.insert(tag);
            logService.save(ConstantUtil.TAG, tag.getTid(), "新增标签信息");
        } else {
            tag.preUpdate();
            tagDao.update(tag);
            logService.save(ConstantUtil.TAG, tag.getTid(), "修改标签信息");
        }
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        tagDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            tagDao.delete(id);
        }
    }
}
