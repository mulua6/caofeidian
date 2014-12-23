// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeInfoParse.java

package com.mulua.annocation;

import java.lang.reflect.Method;

// Referenced classes of package com.mulua.annocation:
//			PrivilegeInfo

public class PrivilegeInfoParse {

	public PrivilegeInfoParse() {
	}

	public static String parsePrivilegeAnnotation(Class className,
			String methodName) throws Exception {
		String privilegeName = "";
		Method method = className.getMethod(methodName, new Class[0]);
		if (method
				.isAnnotationPresent(com.mulua.annocation.PrivilegeInfo.class)) {
			PrivilegeInfo privilegeInfo = (PrivilegeInfo) method
					.getAnnotation(com.mulua.annocation.PrivilegeInfo.class);
			privilegeName = privilegeInfo.name();
			if ("".equals(privilegeName))
				privilegeName = "1";
		} else {
			privilegeName = "1";
		}
		return privilegeName;
	}
}
