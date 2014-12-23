// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   LoginAction.java

package com.mulua.action;

import com.mulua.domain.system.User;
import com.mulua.service.UserService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

// Referenced classes of package com.mulua.action:
//			BaseAction

public class LoginAction extends BaseAction<User> {

	private UserService us;

	public LoginAction() {
	}

	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
	}

	public String login() {
		User user = us.login(((User) getModel()).getLogonName());
		String password = ((User) getModel()).getPassword();
		if (user != null) {
			if (user.getPassword().equals(password)) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("user", user);
				java.util.List ps = us.getPrivilegeFunByUid(user.getUid());
				ServletActionContext.getRequest().getSession()
						.setAttribute("privilegeFun", ps);
				return "success";
			} else {
				addActionError("用户名错误");
				return "login";
			}
		} else {
			addActionError("密码错误");
			return "login";
		}
	}
}
