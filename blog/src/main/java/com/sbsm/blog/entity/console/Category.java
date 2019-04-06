package com.sbsm.blog.entity.console;

import com.sbsm.blog.entity.BaseEntity;
import lombok.Data;

/**
 * 分类。 专辑
 */
@Data
public class Category extends BaseEntity {

    private String cid;
    private String name;
    private String descn;
    private int sort;
    private String pCid;

    @Override
    public void preInsert() {
        super.preInsert();
        cid = getCreateTime().getTime()+"";
    }

    public Category() {
    }

    public Category(Integer id) {
        super.setId(id);
    }
}
