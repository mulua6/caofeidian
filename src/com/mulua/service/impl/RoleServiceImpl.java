// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   RoleServiceImpl.java

package com.mulua.service.impl;

import com.mulua.dao.RoleDao;
import com.mulua.domain.system.Role;
import com.mulua.service.RoleService;
import java.io.Serializable;
import java.util.*;

public class RoleServiceImpl
	implements RoleService
{

	private RoleDao rdao;

	public RoleServiceImpl()
	{
	}

	public RoleDao getRdao()
	{
		return rdao;
	}

	public void setRdao(RoleDao rdao)
	{
		this.rdao = rdao;
	}

	public void addRole(Role r)
	{
		rdao.saveEntry(r);
	}

	public void updateRole(Role r)
	{
		rdao.updateEntry(r);
	}

	public void deleteRole(Serializable rid)
	{
		rdao.deleteEntry(rid);
	}

	public Role findById(Serializable rid)
	{
		return (Role)rdao.getEntryById(rid);
	}

	public Collection showAllRoles()
	{
		return rdao.getAllEntry();
	}

	public Set showRoles(Serializable rids[])
	{
		Set roles = new HashSet();
		Collection rs = rdao.getEntrys(rids);
		Role r;
		for (Iterator iterator = rs.iterator(); iterator.hasNext(); roles.add(r))
			r = (Role)iterator.next();

		return roles;
	}

	public Role findRoleById(Serializable rid)
	{
		return rdao.findRoleById(rid);
	}
}
