package com.mulua.dao;

import java.io.Serializable;
import java.util.Collection;

public interface BaseDao<T>{
	
	public void saveEntry(T t);
	public void deleteEntry(Serializable id);
	public void updateEntry(T t);
	public T getEntryById(Serializable id);
	public Collection<T> getAllEntry();
	public Collection<T> getAllEntryByType(Serializable id);
	public Collection<T> getEntrys(Serializable[] ids);
}
