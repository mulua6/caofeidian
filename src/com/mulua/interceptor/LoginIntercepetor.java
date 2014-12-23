// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   LoginIntercepetor.java

package com.mulua.interceptor;

import com.mulua.domain.system.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class LoginIntercepetor
	implements Interceptor
{

	public LoginIntercepetor()
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
		User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user");
		if (user == null)
		{
			ActionContext.getContext().put("login", "您还没有登录，请登录");
			return "login";
		} else
		{
			return invocation.invoke();
		}
	}
}
