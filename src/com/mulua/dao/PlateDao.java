// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   KynamicDao.java

package com.mulua.dao;

import java.io.Serializable;
import java.util.List;

import com.mulua.domain.Plate;

// Referenced classes of package com.mulua.dao:
//			BaseDao

public interface PlateDao extends BaseDao<Plate> {

	public Plate findPlateById(Serializable rid);

	public void checkPlate(int id, int state);

	public List<Plate> findChildrenPlates(int id);

	public List<Plate> listPlateForCheckAdmin();

}
