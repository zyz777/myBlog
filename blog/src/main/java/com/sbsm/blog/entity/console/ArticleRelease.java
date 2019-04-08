package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class ArticleRelease extends BaseEntity {

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

    private String arId;
    private String version;

    public ArticleRelease() {
    }

    public ArticleRelease(Integer id) {
        setId(id);
    }
}
