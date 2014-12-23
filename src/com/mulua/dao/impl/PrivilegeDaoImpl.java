// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeDaoImpl.java

package com.mulua.dao.impl;

import com.mulua.dao.PrivilegeDao;
import com.mulua.domain.system.Privilege;
import java.io.Serializable;
import java.util.*;

import org.springframework.orm.hibernate3.HibernateTemplate;

// Referenced classes of package com.mulua.dao.impl:
//			BaseDaoImpl

public class PrivilegeDaoImpl extends BaseDaoImpl<Privilege> implements PrivilegeDao {

	public PrivilegeDaoImpl() {
	}

	public Collection<Privilege> showAllPrivileges() {
		return getHibernateTemplate().find("from Privilege");
	}

	public Set<Privilege> getPrivilegeByIds(long ids[]) {
	 List<Privilege> list = getHibernateTemplate().find("from Privilege where id  in  ?", ids);
		return new HashSet<Privilege>(list);
	}

	public Privilege findPrivilegeById(Serializable id) {
		return (Privilege) getHibernateTemplate().get(Privilege.class, id);
	}

	public Collection<Privilege> findPrivilegeByid(Serializable rid) {
		Collection<Privilege> allPrivilege = getAllEntry();
		Collection<Privilege> rolePrivilege = getHibernateTemplate().find("from Privilege p inner join fetch p.roles r where r.rid=?",rid);
		for (Iterator<Privilege> iterator = allPrivilege.iterator(); iterator.hasNext();) {
			Privilege privilege = (Privilege) iterator.next();
			for (Iterator<Privilege> iterator1 = rolePrivilege.iterator(); iterator1
					.hasNext();) {
				Privilege privilege2 = (Privilege) iterator1.next();
				if (privilege.getId().longValue() == privilege2.getId()
						.longValue())
					privilege.setChecked(Boolean.valueOf(true));
			}

		}

		return allPrivilege;
	}

	public Collection<Privilege> showMenuitemsByUid(Serializable uid) {
		return getHibernateTemplate().find("from Privilege p inner join fetch p.roles r inner join fetch r.users u where u.uid = ? and p.flag = '1' ",uid);
	}
	public Collection<Privilege> showAllMenuitems() {
		return getHibernateTemplate().find("from Menuitem ");
	}
}
