// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   DepartmentServiceImpl.java

package com.mulua.service.impl;

import com.mulua.dao.DepartmentDao;
import com.mulua.domain.system.Department;
import com.mulua.service.DepartmentService;
import java.io.Serializable;
import java.util.Collection;

public class DepartmentServiceImpl
	implements DepartmentService
{

	private DepartmentDao ddao;

	public DepartmentServiceImpl()
	{
	}

	public DepartmentDao getDdao()
	{
		return ddao;
	}

	public void setDdao(DepartmentDao ddao)
	{
		this.ddao = ddao;
	}

	public void add(Department department)
	{
		ddao.saveEntry(department);
	}

	public Collection showAllDepartments()
	{
		return ddao.getAllEntry();
	}

	public Department findDepartmentById(Serializable did)
	{
		return (Department)ddao.getEntryById(did);
	}

	public void update(Department department)
	{
		ddao.updateEntry(department);
	}

	public void delete(Serializable did)
	{
		ddao.deleteEntry(did);
	}
}
