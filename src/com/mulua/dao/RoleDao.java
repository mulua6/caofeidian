// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   RoleDao.java

package com.mulua.dao;

import com.mulua.domain.system.Role;
import java.io.Serializable;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface RoleDao extends BaseDao<Role> {

	public abstract Role findRoleById(Serializable serializable);
}
