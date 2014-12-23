// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   Role.java

package com.mulua.domain.system;

import java.io.Serializable;
import java.util.Set;

public class Role implements Serializable {

	private Long rid;
	private String name;
	private String description;
	private Set users;
	private Long pid;
	private Boolean isParent;
	private Set privileges;

	public Role() {
	}

	public Long getRid() {
		return rid;
	}

	public void setRid(Long rid) {
		this.rid = rid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
	}

	public Boolean getIsParent() {
		return isParent;
	}

	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getUsers() {
		return users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getPrivileges() {
		return privileges;
	}

	public void setPrivileges(Set privileges) {
		this.privileges = privileges;
	}
}
