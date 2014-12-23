// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   ToStringUtil.java

package com.mulua.util;

import java.io.Serializable;

public class ToStringUtil
{

	public ToStringUtil()
	{
	}

	public static String toString(Serializable ids[])
	{
		StringBuffer sb = new StringBuffer();
		sb.append("(");
		for (int i = 0; i < ids.length; i++)
			if (i == ids.length - 1)
				sb.append((new StringBuilder()).append(ids[i]).append(")").toString());
			else
				sb.append((new StringBuilder()).append(ids[i]).append(",").toString());

		return sb.toString();
	}
}
