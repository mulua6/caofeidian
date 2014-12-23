// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeDao.java

package com.mulua.dao;

import com.mulua.domain.system.Privilege;
import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface PrivilegeDao extends BaseDao<Privilege> {

	public abstract Collection<Privilege> showAllPrivileges();

	public abstract Set<Privilege> getPrivilegeByIds(long al[]);

	public abstract Privilege findPrivilegeById(Serializable serializable);

	public abstract Collection<Privilege> findPrivilegeByid(Serializable serializable);

	public abstract Collection<Privilege> showMenuitemsByUid(Serializable serializable);
	public Collection<Privilege> showAllMenuitems();
}
