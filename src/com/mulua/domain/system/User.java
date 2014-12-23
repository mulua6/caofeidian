// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   User.java

package com.mulua.domain.system;

import java.io.Serializable;
import java.util.Set;

// Referenced classes of package com.mulua.domain.system:
//			Department

public class User
	implements Serializable
{

	private Long uid;
	private int typeId;
	private int plateId;
	private String username;
	private String logonName;
	private String password;
	private String email;
	private String sex;
	private String phone;
	private Department department;
	private Set roles;

	public User()
	{
	}

	public Long getUid()
	{
		return uid;
	}

	public void setUid(Long uid)
	{
		this.uid = uid;
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getSex()
	{
		return sex;
	}

	public void setSex(String sex)
	{
		this.sex = sex;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public Department getDepartment()
	{
		return department;
	}

	public void setDepartment(Department department)
	{
		this.department = department;
	}

	public Set getRoles()
	{
		return roles;
	}

	public void setRoles(Set roles)
	{
		this.roles = roles;
	}

	public String getLogonName()
	{
		return logonName;
	}

	public void setLogonName(String logonName)
	{
		this.logonName = logonName;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public int getPlateId() {
		return plateId;
	}

	public void setPlateId(int plateId) {
		this.plateId = plateId;
	}
	
}
