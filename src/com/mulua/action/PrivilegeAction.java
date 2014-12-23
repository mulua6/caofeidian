// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PrivilegeAction.java

package com.mulua.action;

import com.mulua.domain.system.Privilege;
import com.mulua.domain.system.Role;
import com.mulua.domain.system.User;
import com.mulua.service.PrivilegeService;
import com.mulua.service.RoleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

// Referenced classes of package com.mulua.action:
//			BaseAction

public class PrivilegeAction extends BaseAction<Privilege> {

	private PrivilegeService ps;
	private RoleService rs;
	private String checkedids;
	private long rid;

	public PrivilegeAction() {
	}

	public String getCheckedids() {
		return checkedids;
	}

	public void setCheckedids(String checkedids) {
		this.checkedids = checkedids;
	}

	public long getRid() {
		return rid;
	}

	public void setRid(long rid) {
		this.rid = rid;
	}

	public RoleService getRs() {
		return rs;
	}

	public void setRs(RoleService rs) {
		this.rs = rs;
	}

	public PrivilegeService getPs() {
		return ps;
	}

	public void setPs(PrivilegeService ps) {
		this.ps = ps;
	}

	public String findPrivilegeByid() {
		Collection<Privilege> privileges = ps.findPrivilegeByid(Long
				.valueOf(rid));
		ActionContext.getContext().getValueStack().push(privileges);
		return "success";
	}

	public String showAllPrivileges() {
		Collection<Privilege> privileges = ps.showAllPrivileges();
		ActionContext.getContext().getValueStack().push(privileges);
		return "success";
	}

	public String showMenuitemsByUid() {
		User u = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		Set<Privilege> pms = ps.showMenuitemsByUid(u.getUid());
		ActionContext.getContext().getValueStack().push(pms);
		return "success";
	}

	public String showAllMenuitems() {
		Set<Privilege> pms = ps.showAllMenuitems();
		System.out.println(pms.toString());
		ActionContext.getContext().getValueStack().push(pms);
		return "success";
	}

	public String savePrivilege() {
		Role r = rs.findRoleById(Long.valueOf(rid));
		Set<Privilege> privileges = new HashSet();
		String temp[] = checkedids.split(",");
		long ids[] = new long[temp.length];
		for (int i = 0; i < temp.length; i++) {
			ids[i] = Long.parseLong(temp[i]);
			com.mulua.domain.system.Privilege p = ps.findPrivilegeById(Long
					.valueOf(ids[i]));
			privileges.add(p);
		}

		r.setPrivileges(privileges);
		rs.updateRole(r);
		return "success";
	}
}
