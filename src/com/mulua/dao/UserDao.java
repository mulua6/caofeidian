// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   UserDao.java

package com.mulua.dao;

import com.mulua.domain.system.User;
import java.io.Serializable;
import java.util.List;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface UserDao extends BaseDao<User> {

	public abstract User findUserByName(String s);

	public abstract List<User> getPrivilegeFunByUid(Serializable serializable);
}