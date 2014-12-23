package com.mulua.domain;

import java.io.Serializable;
import java.util.Date;

public class Pictures implements Serializable{

	private int id ;
	private String title = null;
	//所属公司
	private String upor = null;
	private String url = null;
	private String type = null;
	private Date createTime= null;
	private int typeId ;
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Pictures [id=" + id + ", title=" + title + ", url=" + url
				+ ", type=" + type + "]";
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getUpor() {
		return upor;
	}
	public void setUpor(String upor) {
		this.upor = upor;
	}
	
	
	
	
}
