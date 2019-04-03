package com.sbsm.blog.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.util.Collection;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class ResultPage<T> extends ResultBean<T> {

    private int totalCount;

    public ResultPage() {
    }

    public ResultPage(Collection<T> data) {
        this.data = (T)data;
        this.totalCount = data.size();
    }

}
