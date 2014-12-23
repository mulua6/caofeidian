// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   UserServiceImpl.java

package com.mulua.service.impl;

import com.mulua.dao.UserDao;
import com.mulua.domain.system.User;
import com.mulua.service.UserService;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

public class UserServiceImpl
	implements UserService
{

	private UserDao udao;

	public UserServiceImpl()
	{
	}

	public UserDao getUdao()
	{
		return udao;
	}

	public void setUdao(UserDao udao)
	{
		this.udao = udao;
	}

	public void add(User u)
	{
		udao.saveEntry(u);
	}

	public void update(User u)
	{
		udao.updateEntry(u);
	}

	public void delete(Serializable uid)
	{
		udao.deleteEntry(uid);
	}

	public Collection showAllUsers()
	{
		return udao.getAllEntry();
	}

	public User findUserById(Serializable uid)
	{
		return (User)udao.getEntryById(uid);
	}

	public User login(String logonName)
	{
		return udao.findUserByName(logonName);
	}

	public List getPrivilegeFunByUid(Serializable uid)
	{
		return udao.getPrivilegeFunByUid(uid);
	}
}
