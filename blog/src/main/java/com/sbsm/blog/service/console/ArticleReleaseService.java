package com.sbsm.blog.service.console;

import com.sbsm.blog.dao.console.ArticleReleaseDao;
import com.sbsm.blog.entity.console.*;
import com.sbsm.blog.entity.console.ArticleRelease;
import com.sbsm.blog.service.BaseService;
import com.sbsm.blog.utils.ConstantUtil;
import com.sbsm.blog.vo.ResultPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ArticleReleaseService extends BaseService<ArticleRelease> {

    @Autowired
    private ArticleReleaseDao articleReleaseDao;
    @Autowired
    private ArticleVersionService articleVersionService;

    /**
     * 分页查询
     * @param page
     * @param limit
     * @param articleRelease
     * @return
     */
    public ResultPage<ArticleRelease> findPage(int page, int limit, ArticleRelease articleRelease) {
        List<ArticleRelease> list = articleReleaseDao.findPage(page * limit, limit, articleRelease);
        List<Log> logs = null;
        ArticleVersion av = null;
        for (ArticleRelease data : list) {
            logs = logService.findAll(new Log(data.getArId(), ConstantUtil.ARTICLE));
            data.setLogs(logs);

            av = articleVersionService.findByArIdAndVersion(data.getArId(), data.getVersion());
            data.setAv(av);
        }
        int count = countByDelFlag(false);
        ResultPage<ArticleRelease> rp = new ResultPage<>(list);
        rp.setTotalCount(count);
        return rp;
    }

    /**
     * 查询总数
     * @param isDel
     * @return
     */
    private int countByDelFlag(boolean isDel) {
        return articleReleaseDao.countByDelFlag(isDel);
    }

    public ArticleRelease findOne(Integer id) {
        if (id == null) {
            return null;
        }
        return findOne(new ArticleRelease(id));
    }

    public ArticleRelease findOne(ArticleRelease articleRelease) {
        Optional<ArticleRelease> one = articleReleaseDao.findOne(articleRelease);
        return one.orElse(null);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updateBoolean(Integer id, String field, Boolean result) {
        ArticleRelease one = this.findOne(id);
        if (one == null) {
            return;
        }
        String arId = one.getArId();
        String content = null;
        switch (field) {
            case "isComment":
                one.setIsComment(result);
                content = "文章是否可以评论: " + result;
                break;
            case "isRecommend":
                one.setIsRecommend(result);
                content = "文章是否推荐: " + result;
                break;
            case "isTop":
                one.setIsTop(result);
                content = "文章是否置顶: " + result;
                break;
            default:
                return;
        }
        articleReleaseDao.updateBoolean(one);
        logService.save(ConstantUtil.ARTICLE, arId, content);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(Integer id) {
        articleReleaseDao.delete(id);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteMore(Integer[] ids) {
        for (Integer id : ids) {
            articleReleaseDao.delete(id);
        }
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void saveFromDraft(ArticleDraft articleDraft, String version, String insertOrUpdate) {
        ArticleRelease articleRelease = new ArticleRelease();
        String arId = articleDraft.getArId();
        articleRelease.setArId(arId);

        ArticleRelease one = findOne(articleRelease);
        if (one != null) {
            articleRelease.setId(one.getId());
        }

        articleRelease.setCreateTime(articleDraft.getCreateTime());
        articleRelease.setRemark(articleDraft.getRemark());

        articleRelease.setTitle(articleDraft.getTitle());
        articleRelease.setDescn(articleDraft.getDescn());
        articleRelease.setContent(articleDraft.getContent());
        articleRelease.setImgUrl(articleDraft.getImgUrl());

        articleRelease.setVersion(version);
        articleRelease.setCid(articleDraft.getCid());

        String content = "发表文章 --> <br/>";
        if (ConstantUtil.INSERT.equals(insertOrUpdate)) {
            content += "状态: 首次发布<br/>版本号: " + version + "<br/>";

            articleRelease.preUpdate();
            articleRelease.setIsComment(true);
            articleRelease.setIsRecommend(false);
            articleRelease.setIsTop(false);
            articleReleaseDao.insert(articleRelease);
        } else {
            content += "状态: 新版发布<br/>版本号: " + version + "<br/>";
            articleRelease.preUpdate();
            articleReleaseDao.update(articleRelease);
        }
        logService.save(ConstantUtil.ARTICLE, arId, content);
    }
}
