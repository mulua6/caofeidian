// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   BaseAction.java

package com.mulua.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.PrintStream;
import java.lang.reflect.ParameterizedType;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	private Class classt;
	private T t;
	public static final String LISTACTION = "listAction";
	public static final String UPDATE_UI = "updateUI";
	public static final String ADD_UI = "addUI";
	public static final String ACTION2ACTION = "action2action";
	public String listAction;
	public String updateUI;
	public String addUI;
	public String action2action;

	public BaseAction() {
		listAction = "listAction";
		updateUI = "updateUI";
		addUI = "addUI";
		action2action = "action2action";
		ParameterizedType type = (ParameterizedType) getClass()
				.getGenericSuperclass();
		classt = (Class) type.getActualTypeArguments()[0];
		try {
			t = (T) classt.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("服务器忙");
		}
	}

	public T getModel() {
		return t;
	}

	public String saveUI() {
		return addUI;
	}
}
