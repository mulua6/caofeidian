package com.mulua.action;

import com.mulua.domain.system.Department;
import com.mulua.service.DepartmentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import java.util.Collection;
import org.springframework.beans.BeanUtils;

public class DepartmentAction extends BaseAction<Department> {

	private DepartmentService ds;
	private Collection<Department> departments;
	private Department department;

	public DepartmentAction() {
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Collection<Department> getDepartments() {
		return departments;
	}

	public void setDepartments(Collection<Department> departments) {
		this.departments = departments;
	}

	public DepartmentService getDs() {
		return ds;
	}

	public void setDs(DepartmentService ds) {
		this.ds = ds;
	}

	public String showAllDepartments() {
		departments = ds.showAllDepartments();
		return listAction;
	}

	public String add() {
		Department d = new Department();
		BeanUtils.copyProperties(getModel(), d);
		ds.add(d);
		return action2action;
	}

	public String update() {
		Department d = ds
				.findDepartmentById(((Department) getModel()).getDid());
		BeanUtils.copyProperties(getModel(), d);
		ds.update(d);
		return action2action;
	}

	public String delete() {
		ds.delete(((Department) getModel()).getDid());
		return action2action;
	}

	public String updateUI() {
		department = ds.findDepartmentById(((Department) getModel()).getDid());
		ActionContext.getContext().getValueStack().push(department);
		return updateUI;
	}
}
