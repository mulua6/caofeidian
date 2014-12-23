// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   RoleService.java

package com.mulua.service;

import com.mulua.domain.system.Role;
import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

public interface RoleService {

	public  void addRole(Role role);

	public  void updateRole(Role role);

	public  void deleteRole(Serializable serializable);

	public  Role findById(Serializable serializable);

	public  Collection<Role> showAllRoles();

	public  Set<Role> showRoles(Serializable aserializable[]);

	public  Role findRoleById(Serializable serializable);
}
