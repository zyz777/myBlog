package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
public class Test extends BaseEntity {

    private String content;
    private String title;
    private Integer type;

}
