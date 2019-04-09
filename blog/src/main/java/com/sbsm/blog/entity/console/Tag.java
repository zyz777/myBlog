package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

/**
 * 标签
 */
@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class Tag extends BaseEntity {

    private String tid;
    private String name;
    private String descn;

    public Tag(String name, String descn) {
        this.name = name;
        this.descn = descn;
    }

    @Override
    public void preInsert() {
        super.preInsert();
        this.tid = "t-"+getCreateTime().getTime();
    }

    public Tag() {
    }

    public Tag(Integer id) {
        this.id=id;
    }
}
