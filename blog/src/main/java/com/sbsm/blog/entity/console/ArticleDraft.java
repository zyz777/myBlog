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
public class ArticleDraft extends Article {

    private String adId;
    private Boolean isNew;

    private String[] tids;



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
