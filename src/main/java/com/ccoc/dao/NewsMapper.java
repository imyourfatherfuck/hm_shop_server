package com.ccoc.dao;

import com.ccoc.dao.base.BaseMapper;
import com.ccoc.model.News;

public interface NewsMapper extends BaseMapper<News> {
    News findById(String id);
}