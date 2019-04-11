package com.sbsm.blog.entity.console;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

import java.util.List;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class Article extends BaseEntity {
    protected String title;
    protected String descn;
    protected String content;
    /**
     * 相对路径
     */
    protected String imgUrl;
    /**
     * 文件访问网址前缀
     */
    protected String imgCallPrefixPath;
    /**
     * 绝对路径
     */
    protected String imgAbsUrl;

    protected File file;

    protected String arId;

    protected String cid;
    protected Category category;

    protected List<Tag> tags;
    protected List<ArticleVersion> avs;
}
