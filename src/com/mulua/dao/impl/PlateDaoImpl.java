package com.mulua.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mulua.dao.PlateDao;
import com.mulua.domain.Plate;

public class PlateDaoImpl extends BaseDaoImpl<Plate> implements PlateDao {

	
	@Override
	public void checkPlate(int id,int state) {
		
//		Session session = this.getSessionFactory().getCurrentSession();
//		session.beginTransaction();
//		Query query = session.createQuery("update Plate p set p.state = "+state+" where id = "+id);
//		query.executeUpdate();
//		getSession().getTransaction().commit();	
//		
	
	
		Session session = this.getSessionFactory().openSession();
	      Transaction transaction = session.beginTransaction();
	       //首先提取数据，然后进行修改，最后更新
	      Plate plate = (Plate)session.get(Plate. class,id);
	      plate.setState(state);
	      session.update(plate);
	      transaction.commit();
	      session.close();
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

	@Override
	public List<Plate> findPlateByLevel(int level) {
		return this.getHibernateTemplate().find("from Plate p where p.level = "+level);
	}

	@Override
	public List<Plate> findPlateByFid(int fid) {
		return this.getHibernateTemplate().find("from Plate p where p.fid = "+fid);
	}

	@Override
	public Plate findFPlate(int plateId) {
		Plate p = this.findPlateById(plateId);
		return (Plate) this.findPlateById(p.getFid());
	}

}
