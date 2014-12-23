// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeServiceImpl.java

package com.mulua.service.impl;

import com.mulua.dao.PrivilegeDao;
import com.mulua.domain.system.Privilege;
import com.mulua.service.PrivilegeService;
import java.io.Serializable;
import java.util.*;

public class PrivilegeServiceImpl
	implements PrivilegeService
{

	private PrivilegeDao pdao;

	public PrivilegeServiceImpl()
	{
	}

	public PrivilegeDao getPdao()
	{
		return pdao;
	}

	public void setPdao(PrivilegeDao pdao)
	{
		this.pdao = pdao;
	}

	public Collection showAllPrivileges()
	{
		return pdao.showAllPrivileges();
	}

	public Set getPrivilegeByIds(long ids[])
	{
		return pdao.getPrivilegeByIds(ids);
	}

	public Privilege findPrivilegeById(Serializable id)
	{
		return pdao.findPrivilegeById(id);
	}

	public Collection findPrivilegeByid(Serializable rid)
	{
		return pdao.findPrivilegeByid(rid);
	}

	public Set showMenuitemsByUid(Serializable uid)
	{
		Set m = new TreeSet(pdao.showMenuitemsByUid(uid));
		return m;
	}
	public Set showAllMenuitems()
	{
		Set m = new TreeSet(pdao.showAllMenuitems());
		return m;
	}
}
