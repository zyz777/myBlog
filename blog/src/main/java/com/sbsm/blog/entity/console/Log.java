package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
public class Log extends BaseEntity {

    private String content;
    private String type;
    private String bindId;

    public Log(String bindId, String type) {
        this.bindId = bindId;
        this.type=type;
    }

    public Log() {
    }
}
