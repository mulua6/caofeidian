// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   UserAction.java

package com.mulua.action;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

import org.springframework.beans.BeanUtils;

import com.mulua.domain.system.Department;
import com.mulua.domain.system.Role;
import com.mulua.domain.system.User;
import com.mulua.service.DepartmentService;
import com.mulua.service.RoleService;
import com.mulua.service.UserService;
import com.opensymphony.xwork2.ActionContext;

// Referenced classes of package com.mulua.action:
//			BaseAction

public class UserAction extends BaseAction<User> {

	private UserService us;
	private DepartmentService ds;
	private RoleService rs;
	private Collection<Department> departments;
	private Collection<Role> aroles;
	private Long rids[];
	private Long departmentId;

	public UserAction() {
	}

	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
	}

	public DepartmentService getDs() {
		return ds;
	}

	public void setDs(DepartmentService ds) {
		this.ds = ds;
	}

	public Collection<Department> getDepartments() {
		return departments;
	}

	public void setDepartments(Collection<Department> departments) {
		this.departments = departments;
	}

	public Collection<Role> getAroles() {
		return aroles;
	}

	public void setAroles(Collection<Role> aroles) {
		this.aroles = aroles;
	}

	public Long getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Long departmentId) {
		this.departmentId = departmentId;
	}

	public RoleService getRs() {
		return rs;
	}

	public void setRs(RoleService rs) {
		this.rs = rs;
	}

	public Long[] getRids() {
		return rids;
	}

	public void setRids(Long rids[]) {
		this.rids = rids;
	}

	public String save() {
		User u = new User();
		BeanUtils.copyProperties(getModel(), u);
//		String sp = MD5Utils.MD5("1234");
		if(u.getPlateId()==0){
			u.setPlateId(-1);
		}
		us.add(u);
		return action2action;
	}

	public String update() {
		User u = us.findUserById(((User) getModel()).getUid());
		BeanUtils.copyProperties(getModel(), u);
		us.update(u);
		return action2action;
	}

	public String delete() {
		us.delete(((User) getModel()).getUid());
		return action2action;
	}

	public String updateUI() {
		User u = us.findUserById(((User) getModel()).getUid());
		Set<Role> roles = u.getRoles();
		rids = new Long[roles.size()];
		int index = 0;
		for (Iterator<Role> iterator = roles.iterator(); iterator.hasNext();) {
			Role role = (Role) iterator.next();
			rids[index++] = role.getRid();
		}

		departments = ds.showAllDepartments();
		aroles = rs.showAllRoles();
		ActionContext.getContext().getValueStack().push(u);
		return updateUI;
	}

	public String showAllUsers() {
		Collection<User> users = us.showAllUsers();
		ActionContext.getContext().put("users", users);
		return listAction;
	}

	public String saveUI() {
		departments = ds.showAllDepartments();
		aroles = rs.showAllRoles();
		return addUI;
	}
}
