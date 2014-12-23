package com.mulua.dao.impl;

import java.io.Serializable;
import java.util.Collection;

import com.mulua.dao.PicturesDao;
import com.mulua.domain.Pictures;

public class PicturesDaoImpl extends BaseDaoImpl<Pictures> implements PicturesDao {

	public Pictures getLogo(Serializable id) {
		return (Pictures) this.getHibernateTemplate().find("from Pictures  where type = "+id).get(0);
	}
	public Collection<Pictures>  getPics(Serializable id) {
		return this.getHibernateTemplate().find("from Pictures  where typeId = "+id+" and id>5");
	}
	public Collection<Pictures>  getPicList() {
		return this.getHibernateTemplate().find("from Pictures  where  id>5");
	}

}
