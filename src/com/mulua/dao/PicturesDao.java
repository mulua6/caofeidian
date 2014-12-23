// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   KynamicDao.java

package com.mulua.dao;

import java.io.Serializable;
import java.util.Collection;

import com.mulua.domain.Pictures;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface PicturesDao extends BaseDao<Pictures> {

	public Pictures getLogo(Serializable id);
	public Collection<Pictures> getPics(Serializable id);
	public Collection<Pictures> getPicList();
}
