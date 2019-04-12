package com.sbsm.blog.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.util.Collection;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class ResultPage<T> extends ResultBean {

    private int totalCount;

    public ResultPage() {
    }

    public ResultPage(Collection<T> data) {
        super.data = data;
        this.totalCount = data.size();
    }

}
