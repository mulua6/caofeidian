// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   OAUtils.java

package com.mulua.util;

import java.io.Serializable;

public class OAUtils
{

	public OAUtils()
	{
	}

	public static String arrays2String(Serializable ids[])
	{
		StringBuffer stringBuffer = new StringBuffer();
		for (int i = 0; i < ids.length; i++)
			if (i == ids.length - 1)
				stringBuffer.append(ids[i]);
			else
				stringBuffer.append((new StringBuilder()).append(ids[i]).append(",").toString());

		return stringBuffer.toString();
	}
}
