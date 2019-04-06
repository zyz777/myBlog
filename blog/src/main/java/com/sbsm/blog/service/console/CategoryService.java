package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.CategoryDao;
import com.sbsm.blog.entity.console.Category;
import com.sbsm.blog.entity.console.Category;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryService extends BaseService {

    @Autowired
    private CategoryDao categoryDao;

    public ResultPage<Category> findPage(int page, int limit, Category category) {
        List<Category> list = categoryDao.findPage(page * limit, limit, category);
        int count = countByDelFlag(false);
        ResultPage<Category> rp = new ResultPage<>(list);
        rp.setTotalCount(count);
        return rp;
    }

    private int countByDelFlag(boolean isDel) {
        return categoryDao.countByDelFlag(isDel);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void save(Category category) {
        if (category.getId() == null) {
            category.preInsert();
            categoryDao.insert(category);
        } else {
            category.preUpdate();
            categoryDao.update(category);
        }
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        categoryDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            categoryDao.delete(id);
        }
    }
}
