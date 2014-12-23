package com.mulua.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.Collection;

import org.hibernate.metadata.ClassMetadata;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.mulua.dao.BaseDao;
import com.mulua.util.ToStringUtil;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T>{

	private Class classt;
	
	public  BaseDaoImpl(){
		//得到泛型
		ParameterizedType type =(ParameterizedType) this.getClass().getGenericSuperclass();
		//得到T的class形式
		this.classt = (Class)type.getActualTypeArguments()[0];
	}
	public void saveEntry(T t) {
		this.getHibernateTemplate().save(t);
	}

	public void deleteEntry(Serializable id) {
		T t = this.getEntryById(id);
		this.getHibernateTemplate().delete(t);
	}

	public void updateEntry(T t) {
		this.getHibernateTemplate().update(t);
	}

	public T getEntryById(Serializable id) {
		return (T) this.getHibernateTemplate().get(classt, id);
	}

	public Collection<T> getAllEntry() {
		return this.getHibernateTemplate().find("from  "+this.classt.getSimpleName());
	}
	
	public Collection<T> getAllEntryByType(Serializable id) {
		return this.getHibernateTemplate().find("from  "+this.classt.getSimpleName()+" where typeId = "+id);
	}
	public Collection<T> getEntrys(Serializable[] ids) {
		
		ClassMetadata data = this.getSessionFactory().getClassMetadata(classt);
		String name = data.getIdentifierPropertyName();
		String idss = ToStringUtil.toString(ids);
		return this.getHibernateTemplate().find("from "+this.classt.getSimpleName()+"  where  "+name+"  in    "+idss);
	}

}
