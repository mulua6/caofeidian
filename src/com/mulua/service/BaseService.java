// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   BaseService.java

package com.mulua.service;

import java.io.Serializable;
import java.util.Collection;

public interface BaseService
{

	public abstract void add(Object obj);

	public abstract void update(Object obj);

	public abstract void delete(Serializable serializable);

	public abstract Collection showAllDepartments();

	public abstract Object findById(Serializable serializable);
}
