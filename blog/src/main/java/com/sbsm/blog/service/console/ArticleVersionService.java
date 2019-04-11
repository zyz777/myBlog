package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleVersionDao;
import com.sbsm.blog.entity.console.ArticleVersion;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.ConstantUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class ArticleVersionService extends BaseService<ArticleVersion> {

    @Autowired
    private ArticleVersionDao articleVersionDao;

    @Transactional(propagation = Propagation.REQUIRED)
    public void save(ArticleVersion articleVersion) {
        String content = "新增文章版本更新内容";
        if (articleVersion.getId() == null) {
            articleVersion.preInsert();
            articleVersionDao.insert(articleVersion);
        } else {
            articleVersion.preUpdate();
            articleVersionDao.update(articleVersion);
            content = "修改文章版本更新内容";
        }
        logService.save(ConstantUtil.ARTICLE_VERSION, articleVersion.getArId(), content);
    }

    public ArticleVersion findOne(ArticleVersion articleVersion) {
        Optional<ArticleVersion> one = articleVersionDao.findOne(articleVersion);
        return one.orElse(null);
    }

    public ArticleVersion findByArIdAndVersion(String arId, String version) {
        return this.findOne(new ArticleVersion(arId, version));
    }
}
