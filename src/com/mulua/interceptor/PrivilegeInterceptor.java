// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeInterceptor.java

package com.mulua.interceptor;

import com.mulua.annocation.PrivilegeInfoParse;
import com.mulua.domain.system.Privilege;
import com.opensymphony.xwork2.*;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class PrivilegeInterceptor
	implements Interceptor
{

	public PrivilegeInterceptor()
	{
	}

	public void destroy()
	{
	}

	public void init()
	{
	}

	public String intercept(ActionInvocation invocation)
		throws Exception
	{
		String methodName = invocation.getProxy().getMethod();
		List privilegeTree = (List)ServletActionContext.getRequest().getSession().getAttribute("privilegeFun");
		String privilegeName = PrivilegeInfoParse.parsePrivilegeAnnotation(invocation.getAction().getClass(), methodName);
		boolean flag = false;
		for (Iterator iterator = privilegeTree.iterator(); iterator.hasNext();)
		{
			Privilege privilege = (Privilege)iterator.next();
			if (privilege.getName().equals(privilegeName) || "1".equals(privilegeName))
			{
				flag = true;
				break;
			}
		}

		if (flag)
		{
			return invocation.invoke();
		} else
		{
			ActionContext.getContext().put("privilege_error", "您没有权限");
			return "privilege_error";
		}
	}
}
