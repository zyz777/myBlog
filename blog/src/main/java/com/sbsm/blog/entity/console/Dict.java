package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
public class Dict extends BaseEntity {

    private String label;
    private String value;
    private String type;
    private String descn;

    public Dict() {
    }

    public Dict(Integer id) {
        this.id = id;
    }
}
