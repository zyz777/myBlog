package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

import java.util.List;

/**
 * 文章列表
 */
@Data
public class Article extends BaseEntity {

    private String title;
    private String descn;
    private String content;
    private String imgUrl;

    private Boolean isComment;
    private Boolean isRecommend;
    private Boolean isTop;
    private Integer browseNum;
    private Integer commentNum;
    private Integer likeNum;

    private Boolean isDraft;

    private List<Tag> tags;

    public Article(Integer id) {
        this.id = id;
    }

    public Article() {
    }
}
