// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   RoleAction.java

package com.mulua.action;

import com.mulua.domain.system.Role;
import com.mulua.service.RoleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import java.util.Collection;
import org.springframework.beans.BeanUtils;

// Referenced classes of package com.mulua.action:
//			BaseAction

public class RoleAction extends BaseAction<Role> {

	private RoleService ps;
	private Collection<Role> roles;

	public RoleAction() {
	}

	public RoleService getPs() {
		return ps;
	}

	public void setPs(RoleService ps) {
		this.ps = ps;
	}

	public Collection<Role> getRoles() {
		return roles;
	}

	public void setRoles(Collection<Role> roles) {
		this.roles = roles;
	}

	public String save() {
		Role r = new Role();
		BeanUtils.copyProperties(getModel(), r);
		ps.addRole(r);
		return action2action;
	}

	public String update() {
		Role r = ps.findById(((Role) getModel()).getRid());
		BeanUtils.copyProperties(getModel(), r);
		ps.updateRole(r);
		return action2action;
	}

	public String delete() {
		ps.deleteRole(((Role) getModel()).getRid());
		return action2action;
	}

	public String showAllRoles() {
		roles = ps.showAllRoles();
		return listAction;
	}

	public String updateUI() {
		Role r = ps.findById(((Role) getModel()).getRid());
		ActionContext.getContext().getValueStack().push(r);
		return updateUI;
	}

	public String showRoleTree() throws Exception {
		Collection<Role> roleList = ps.showAllRoles();
		ActionContext.getContext().getValueStack().push(roleList);
		return "success";
	}
}
