package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class ArticleVersion extends BaseEntity {

    private String title;
    private String version;
    private String content;
    private String arId;

    public ArticleVersion(String arId, String version) {
        this.arId = arId;
        this.version = version;
    }

    public ArticleVersion() {
    }
}
