package com.sbsm.blog.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class BaseEntity {

    protected Integer id;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",  timezone="GMT+8")
    protected Date createTime;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" ,  timezone="GMT+8")
    protected Date updateTime;

    protected String remark;

    protected int delFlag;

    public void preInsert() {
        this.createTime = new Date();
        this.updateTime = createTime;
    }

    public void preUpdate() {
        this.updateTime = new Date();
    }

}
