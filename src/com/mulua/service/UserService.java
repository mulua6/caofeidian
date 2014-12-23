// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   UserService.java

package com.mulua.service;

import com.mulua.domain.system.User;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

public interface UserService {

	public  void add(User user);

	public  void update(User user);

	public  void delete(Serializable serializable);

	public  Collection<User> showAllUsers();

	public  User findUserById(Serializable serializable);

	public  User login(String s);

	public  List<User> getPrivilegeFunByUid(Serializable serializable);
}
