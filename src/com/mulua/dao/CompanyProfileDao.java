// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   KynamicDao.java

package com.mulua.dao;

import java.util.Collection;

import com.mulua.domain.CompanyProfile;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface CompanyProfileDao extends BaseDao<CompanyProfile> {

	public void saveOrUpdate(CompanyProfile cp);

}
