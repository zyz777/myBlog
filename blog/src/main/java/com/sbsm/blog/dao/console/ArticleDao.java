package com.sbsm.blog.dao.console;

import com.sbsm.blog.dao.BaseDao;
import com.sbsm.blog.entity.console.Article;
import org.springframework.stereotype.Repository;

import java.util.List;


/*@Repository也可以不用添加，但是不添加之后使用@Autowired注入接口是IDEA会提示红线，但是不影响编译运行*/
/*@Mapper如果配置了自动扫描，这个注解可以不添加，也推荐使用自动扫描*/
@Repository
public interface ArticleDao extends BaseDao<Article> {
    List<Article> findDraftList(int page, int limit, Article article);

    int countByIsDraftAndDelFlag(boolean isDraft, boolean isDel);

    void updateContent(Article article);

    void updateIsDraft(Integer id, boolean isDraft);

}
