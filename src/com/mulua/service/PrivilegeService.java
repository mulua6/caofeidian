// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeService.java

package com.mulua.service;

import com.mulua.domain.system.Privilege;
import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

public interface PrivilegeService {

	public  Collection<Privilege> showAllPrivileges();

	public  Set<Privilege> getPrivilegeByIds(long al[]);

	public  Privilege findPrivilegeById(Serializable serializable);

	public  Collection<Privilege> findPrivilegeByid(Serializable serializable);

	public  Set<Privilege> showMenuitemsByUid(Serializable serializable);
	public Set showAllMenuitems();
}
