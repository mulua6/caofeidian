// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   testAdd.java

package com.mulua.test;

import com.mulua.domain.system.Department;
import com.mulua.service.DepartmentService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testAdd
{

	public testAdd()
	{
	}

	public void testadd()
	{
		ApplicationContext c = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		DepartmentService ds = (DepartmentService)c.getBean("departmentService");
		Department d = new Department();
		d.setName("hh");
		ds.add(d);
	}
}
