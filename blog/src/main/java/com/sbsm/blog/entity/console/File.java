package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class File extends BaseEntity {

    private String fid;
    private Long byteSize;
    private String displaySize;
    private String originalName;
    private String nowName;
    private String md5;
    private String crc32;
    private String url;

    @Override
    public void preInsert() {
        super.preInsert();
        this.fid = "f-"+getCreateTime().getTime();
    }

    public File() {
    }


}
