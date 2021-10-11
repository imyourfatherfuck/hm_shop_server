package com.ccoc.dao.base;

import java.util.List;

public interface BaseMapper<T> {
	int deleteByPrimaryKey(Integer id);

	int insert(T entity);

	int insertSelective(T entity);

	T selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKeySelective(T entity);

	int updateByPrimaryKey(T entity);

	List<T> findAll();
}
