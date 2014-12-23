// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   UserDaoImpl.java

package com.mulua.dao.impl;

import com.mulua.dao.UserDao;
import com.mulua.domain.system.User;
import java.io.Serializable;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

// Referenced classes of package com.mulua.dao.impl:
//			BaseDaoImpl

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	public UserDaoImpl() {
	}

	public User findUserByName(String logonName) {
		List<User> users = getHibernateTemplate().find(
				"from User where logonName = ?", logonName);
		if (users.size() > 0)
			return (User) users.get(0);
		else
			return null;
	}

	public List<User> getPrivilegeFunByUid(Serializable uid) {
		return getHibernateTemplate()
				.find("from Privilege p inner join fetch p.roles r inner join fetch r.users u where u.uid = ? and p.flag='2'",
						uid);
	}
}
