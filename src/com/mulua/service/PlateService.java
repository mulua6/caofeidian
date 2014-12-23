// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PlateService.java

package com.mulua.service;

import com.mulua.domain.Plate;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public interface PlateService {

	public  void addPlate(Plate Plate);

	public  void updatePlate(Plate Plate);

	public  void deletePlate(Serializable serializable);

	public  Plate findById(Serializable serializable);

	public  Collection<Plate> showAllPlates();

	public  Set<Plate> showPlates(Serializable aserializable[]);

	public  Plate findPlateById(Serializable serializable);

	/**
	 * 管理员审核板块信息
	 * @param id
	 */
	public void checkPlate(int id);

	/**
	 * 查找一级模块下的所有二级模块
	 * @param id
	 * @return
	 */
	public List<Plate> findChildrenPlates(int id);
	/**
	 * 查找未审核列表
	 * @return
	 */
	public List<Plate> listPlateForCheckAdmin();
}
