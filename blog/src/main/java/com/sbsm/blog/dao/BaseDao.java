package com.sbsm.blog.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Optional;

public interface BaseDao<T> {

    void insert(T t);

    void update(T t);

    void delete(Integer id);

    void deleteByIds(List<Integer> ids);

    Optional<T> findOne(T t);

    List<T> findAll(T t);

    List<T> findPage(int rowIndex, int limit, T t);

    int countByDelFlag(boolean isDel);
}
