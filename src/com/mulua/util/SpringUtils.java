// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   SpringUtils.java

package com.mulua.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringUtils
{

	public static ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");

	public SpringUtils()
	{
	}

}
