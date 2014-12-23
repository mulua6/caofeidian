// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   RoleDaoImpl.java

package com.mulua.dao.impl;

import com.mulua.dao.RoleDao;
import com.mulua.domain.system.Role;
import java.io.Serializable;
import org.springframework.orm.hibernate3.HibernateTemplate;

// Referenced classes of package com.mulua.dao.impl:
//			BaseDaoImpl

public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao {

	public RoleDaoImpl() {
	}

	public Role findRoleById(Serializable rid) {
		return (Role) getHibernateTemplate().get(Role.class, rid);
	}
}
