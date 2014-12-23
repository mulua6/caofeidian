package com.mulua.dao.impl;

import java.io.Serializable;
import java.util.List;

import com.mulua.dao.PlateDao;
import com.mulua.domain.Plate;

public class PlateDaoImpl extends BaseDaoImpl<Plate> implements PlateDao {

	
	@Override
	public void checkPlate(int id) {
		
	}

	@Override
	public List<Plate> findChildrenPlates(int id) {
		return this.getHibernateTemplate().find("from Plate p where p.fid = "+id +"order by id desc limit 0,1");
	}

	@Override
	public Plate findPlateById(Serializable plateId) {
		return (Plate) this.getHibernateTemplate().find("from Plate p where p.id = "+plateId).get(0);
	}

	@Override
	public List<Plate> listPlateForCheckAdmin() {
		return this.getHibernateTemplate().find("from Plate p where state !=2 ");
	}

}
