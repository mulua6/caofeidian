// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   Department.java

package com.mulua.domain.system;

import java.io.Serializable;
import java.util.Set;

public class Department
	implements Serializable
{

	private Long did;
	private String name;
	private String description;
	private Set users;

	public Department()
	{
	}

	public Long getDid()
	{
		return did;
	}

	public void setDid(Long did)
	{
		this.did = did;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getDescription()
	{
		return description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

	public Set getUsers()
	{
		return users;
	}

	public void setUsers(Set users)
	{
		this.users = users;
	}
}
