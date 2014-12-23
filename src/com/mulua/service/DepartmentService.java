// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   DepartmentService.java

package com.mulua.service;

import com.mulua.domain.system.Department;
import java.io.Serializable;
import java.util.Collection;

public interface DepartmentService {

	public  void add(Department department);

	public  void update(Department department);

	public  void delete(Serializable serializable);

	public  Collection<Department> showAllDepartments();

	public  Department findDepartmentById(Serializable serializable);
}
