package com.mulua.domain;

import java.util.Date;

public class Business {
	
	private int id ;
	private String title = null;
	private Date createTime= null;
	private Date updateTime= null;
	private String content = null;
	private String creator = null;
	private String ifTop = null;
	private int typeId ;
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		updateTime = updateTime;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * @return the creator
	 */
	public String getCreator() {
		return creator;
	}
	/**
	 * @param creator the creator to set
	 */
	public void setCreator(String creator) {
		this.creator = creator;
	}
	/**
	 * @return the ifTop
	 */
	public String getIfTop() {
		return ifTop;
	}
	/**
	 * @param ifTop the ifTop to set
	 */
	public void setIfTop(String ifTop) {
		this.ifTop = ifTop;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Business [id=" + id + ", title=" + title + ", createTime="
				+ createTime + ", UpdateTime=" + updateTime + ", content="
				+ content + ", creator=" + creator + ", ifTop=" + ifTop + "]";
	}
	
	
	
	
}
