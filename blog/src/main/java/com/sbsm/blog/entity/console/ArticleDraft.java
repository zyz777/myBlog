package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

import java.util.List;

/**
 * 文章草稿
 */
@Data
//@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class ArticleDraft extends BaseEntity {

    private String title;
    private String descn;
    private String content;
    private String imgUrl;

    private String arId;
    private String adId;
    private Boolean isNew;

    private String cid;
    private Category category;

    private List<Tag> tags;
    private String[] tids;

    private List<ArticleVersion> avs;

    @Override
    public void preInsert() {
        super.preInsert();
        this.arId = "ar-"+getCreateTime().getTime();
        this.adId = "ad-"+getCreateTime().getTime();
    }

    public ArticleDraft(Integer id) {
        this.id = id;
    }

    public ArticleDraft() {
    }
}
