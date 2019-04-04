package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

/**
 * 标签
 */
@Data
public class Tag extends BaseEntity {

    private String name;
    private String value;

    public Tag() {
    }

    public Tag(String value, String name) {
        this.name = name;
        this.value = value;
    }
}
