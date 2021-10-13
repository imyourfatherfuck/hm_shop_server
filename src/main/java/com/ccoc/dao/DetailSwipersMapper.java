package com.ccoc.dao;

import com.ccoc.dao.base.BaseMapper;
import com.ccoc.model.DetailSwipers;

import java.util.List;

public interface DetailSwipersMapper extends BaseMapper<DetailSwipers> {
    List<DetailSwipers> findByPId(String pid);
}