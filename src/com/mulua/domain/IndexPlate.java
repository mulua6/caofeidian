package com.mulua.domain;

import java.util.List;

public class IndexPlate {

	public int id;
	public String name;
	public String describe;
	public List<Plate> childs;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public List<Plate> getChilds() {
		return childs;
	}
	public void setChilds(List<Plate> childs) {
		this.childs = childs;
	}
	
	
}
