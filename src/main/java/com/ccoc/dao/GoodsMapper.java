package com.ccoc.dao;

import com.ccoc.dao.base.BaseMapper;
import com.ccoc.model.Goods;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface GoodsMapper extends BaseMapper<Goods>{
    List<Goods> findAllGoodsByPageF(int i, int i1);

    Goods findById(String id);
}