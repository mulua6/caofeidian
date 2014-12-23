package com.mulua.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.mulua.domain.Attention;
import com.mulua.domain.Plate;
import com.mulua.domain.Process;
import com.mulua.service.PlateService;

public class PlateAction extends BaseAction<Plate> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public Set<Attention> attentions;
	public Set<Process> processes;
	public List<Plate> childrenPlates;
	public PlateService plateService;
	public int plateId;
	public Plate plate;
	
//	public String processname;
	public String[] processName;
	public String[] processDescribe;
	public String[] attentionContent;
	/**
	 * 新增
	 * @return
	 */
	public String savePlate(){
		Plate plate = this.getModel();
		
		processes = new HashSet<Process>();
		for(int i=0;i<processName.length;i++){
			Process p = new Process();
			p.setName(processName[i]);
			p.setDescribe(processDescribe[i]);
			p.setStep(i+1);
			p.setPlate(plate);
			processes.add(p);
		}
		
		attentions = new HashSet<Attention>();
		for(int i=0;i<attentionContent.length;i++){
			Attention a = new Attention();
			a.setContent(attentionContent[i]);
			a.setOrder(i+1);
			a.setPlate(plate);
			attentions.add(a);
		}
		
		plate.setAttentions(attentions);
		plate.setProcesses(processes);
		plate.setFid(plateId);
		plate.setLevel(2);
		plate.setState(0);
		plateService.addPlate(plate);
		return action2action;
	}
	/**
	 * 修改模块信息   先插入
	 * @return
	 */
	public String updatePlate(){
		Plate plate = this.getModel();
		plate.setAttentions(attentions);
		plate.setProcesses(processes);
		
		//设置为未审核
		plate.setState(0);
		
		plateService.addPlate(plate);
		return action2action;
	}
	
	/**
	 * 审核模块信息  
	 * @return
	 */
	public String checkPlate(){
		Plate plate = this.getModel();
		plateService.updatePlate(plate);
		return action2action;
	}
	
	/**
	 * 查找最新的板块信息
	 * @return
	 */
	public String listPlateForAdmin(){
		Plate plate = this.getModel();
		int id = plate.getId();
		childrenPlates = plateService.findChildrenPlates(plateId);
		return "listAction";
	}
	
	
	/**
	 * 
	 * @return
	 */
	public String findPlateById(){
		
		plate = plateService.findPlateById(plateId);
		return "updateUI";
	}
	public String updateUI(){
		
		plate = plateService.findPlateById(plateId);
		return "updateUI";
	}
	public String saveUI(){
		return "saveUI";
	}
	
	
	public List<Plate> getChildrenPlates() {
		return childrenPlates;
	}
	public void setChildrenPlates(List<Plate> childrenPlates) {
		this.childrenPlates = childrenPlates;
	}
	public PlateService getPlateService() {
		return plateService;
	}
	public void setPlateService(PlateService plateService) {
		this.plateService = plateService;
	}
	public int getPlateId() {
		return plateId;
	}
	public void setPlateId(int plateId) {
		this.plateId = plateId;
	}
	public String[] getProcessName() {
		return processName;
	}
	public void setProcessName(String[] processName) {
		this.processName = processName;
	}
	public String[] getProcessDescribe() {
		return processDescribe;
	}
	public void setProcessDescribe(String[] processDescribe) {
		this.processDescribe = processDescribe;
	}
	public String[] getAttentionContent() {
		return attentionContent;
	}
	public void setAttentionContent(String[] attentionContent) {
		this.attentionContent = attentionContent;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
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
	public Plate getPlate() {
		return plate;
	}
	public void setPlate(Plate plate) {
		this.plate = plate;
	}
	
	
	
	
	
	
}
