package com.mulua.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

public class Plate {

	private int id;
	private String name;
	private int level;//几级板块
	private int fid;//父板块的id
	private String describe;//板块简介
	private String business;//业务
	private int state;//状态 0为未审核 1为审核未通过 2为审核通过
	private Set<Attention> attentions;
	private Set<Process> processes;
	
	
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Set<Attention> getAttentions() {
		return attentions;
	}
	public void setAttentions(Set<Attention> attentions) {
		this.attentions = attentions;
	}
	public Set<Process> getProcesses() {
		return processes;
	}
	public void setProcesses(Set<Process> processes) {
		this.processes = processes;
	}
}
