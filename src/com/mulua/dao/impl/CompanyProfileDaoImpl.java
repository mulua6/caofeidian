package com.mulua.dao.impl;

import java.io.Serializable;
import java.util.Collection;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.mulua.dao.CompanyProfileDao;
import com.mulua.domain.CompanyProfile;

public class CompanyProfileDaoImpl extends BaseDaoImpl<CompanyProfile> implements CompanyProfileDao {

	
	
	public void saveOrUpdate(CompanyProfile cp){
		this.getHibernateTemplate().saveOrUpdate(cp);
	}
}
