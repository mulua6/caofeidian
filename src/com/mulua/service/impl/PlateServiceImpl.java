// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   PlateServiceImpl.java

package com.mulua.service.impl;

import com.mulua.dao.PlateDao;
import com.mulua.domain.Plate;
import com.mulua.service.PlateService;

import java.io.Serializable;
import java.util.*;

public class PlateServiceImpl
	implements PlateService
{

	public PlateDao pdao;

	public PlateServiceImpl()
	{
	}

	public PlateDao getRdao()
	{
		return pdao;
	}

	public void setRdao(PlateDao rdao)
	{
		this.pdao = rdao;
	}

	public void addPlate(Plate r)
	{
		pdao.saveEntry(r);
	}

	public void updatePlate(Plate r)
	{
		pdao.updateEntry(r);
	}

	public void deletePlate(Serializable rid)
	{
		pdao.deleteEntry(rid);
	}

	public Plate findById(Serializable rid)
	{
		return (Plate)pdao.getEntryById(rid);
	}

	public Collection showAllPlates()
	{
		return pdao.getAllEntry();
	}

	public Set showPlates(Serializable rids[])
	{
		Set Plates = new HashSet();
		Collection rs = pdao.getEntrys(rids);
		Plate r;
		for (Iterator iterator = rs.iterator(); iterator.hasNext(); Plates.add(r))
			r = (Plate)iterator.next();

		return Plates;
	}

	public Plate findPlateById(Serializable rid)
	{
		return pdao.findPlateById(rid);
	}

	@Override
	public void checkPlate(int id) {
		pdao.checkPlate(id, id);
	}

	@Override
	public List<Plate> findChildrenPlates(int id) {
		return pdao.findChildrenPlates(id);
	}

	public PlateDao getPdao() {
		return pdao;
	}

	public void setPdao(PlateDao pdao) {
		this.pdao = pdao;
	}

	@Override
	public List<Plate> listPlateForCheckAdmin() {
		return pdao.listPlateForCheckAdmin();
	}

	@Override
	public void check(int plateId,int state) {
		pdao.checkPlate(plateId,state);
	}
	
}
