package com.ccoc.dao;

import com.ccoc.dao.base.BaseMapper;
import com.ccoc.model.CategoryItem;

import java.util.List;

public interface CategoryItemMapper extends BaseMapper<CategoryItem> {
    List<CategoryItem> findByCateId(String cateId);
}