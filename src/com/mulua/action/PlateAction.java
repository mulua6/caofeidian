package com.mulua.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.mulua.domain.Attention;
import com.mulua.domain.IndexPlate;
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
	public Map<Integer,List<Plate>> indexMap;
	public PlateService plateService;
	
	public List<IndexPlate> indexPlates;
	public IndexPlate indexPlate;
	public int plateId;
	public int state;
	public int stateId;
	public Plate plate;
	public int fplateId;
	
//	public String processname;
	public int[] processIds;
	public String[] processName;
	public String[] processDescribe;
	public int[] attentionIds;
	public String[] attentionContent;
	
	
	
	/*前台服务*/
	
	/**
	 * 首页的板块以及子版块的信息
	 * @return
	 */
	public String index(){
		
		List<Plate> mainPlates = plateService.findPlateByLevel(1);
		indexPlates = new ArrayList<IndexPlate>();
		for(Plate p:mainPlates){
			IndexPlate indexPlate = new IndexPlate();
			indexPlate.setId(p.getId());
			indexPlate.setName(p.getName());
			indexPlate.setDescribe(p.getDescribe());
			List<Plate> childList = plateService.findPlateByFid(p.getId());
			indexPlate.setChilds(childList);
			
			indexPlates.add(indexPlate);
		}
		return "index";
	}
	
	
	/**
	 * 查看单个板块
	 * @return
	 */
	public String findPlateForView(){
		//二级板块
		plate = plateService.findPlateById(plateId);
		
		//右侧列表
		
		Plate fplate = plateService.findFPlate(plateId);
		indexPlate = new IndexPlate();
		indexPlate.setId(fplate.getId());
		indexPlate.setName(fplate.getName());
		indexPlate.setDescribe(fplate.getDescribe());
		List<Plate> childList = plateService.findPlateByFid(fplate.getId());
		indexPlate.setChilds(childList);
		return "view";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*后台服务*/
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
		plate.setFid(fplateId);
		plate.setLevel(2);
		plate.setState(0);
		plateService.addPlate(plate);
		return action2action;
	}
	
	/**
	 * 修改模块信息   
	 * 根据状态判断
	 * 	审核通过就新增
	 * 	未审核或者没通过就修改
	 * @return
	 */
	public String updatePlate(){
		
		Plate plate = this.getModel();
		
		processes = new HashSet<Process>();
		for(int i=0;i<processName.length;i++){
			Process p = new Process();
			if(plate.getState()!=2){
				p.setId(processIds[i]);
			}
			p.setName(processName[i]);
			p.setDescribe(processDescribe[i]);
			p.setStep(i+1);
			p.setPlate(plate);
			processes.add(p);
		}
		
		attentions = new HashSet<Attention>();
		for(int i=0;i<attentionContent.length;i++){
			Attention a = new Attention();
			if(plate.getState()!=2){
				a.setId(attentionIds[i]);
			}
			a.setContent(attentionContent[i]);
			a.setOrder(i+1);
			a.setPlate(plate);
			attentions.add(a);
		}
		
		plate.setAttentions(attentions);
		plate.setProcesses(processes);
		plate.setFid(fplateId);
		plate.setLevel(2);
		plate.setState(0);
		if(plate.getState()!=2){
//			plate.setId(id);
			plateService.updatePlate(plate);
		}else{
			plateService.addPlate(plate);
		}
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
	 * 审核模块信息  
	 * @return
	 */
	public String delete(){
		Plate plate = this.getModel();
		plateService.deletePlate(plateId);
		return action2action;
	}
	
	/**
	 * 查找最新的板块信息
	 * @return
	 */
	public String listPlateForAdmin(){
		childrenPlates = plateService.findChildrenPlates(fplateId);
		return "listAction";
	}
	/**
	 * 查找审核管理员的板块信息
	 * 显示所有的板块的待审核信息
	 * @return
	 */
	public String listPlateForCheckAdmin(){
		childrenPlates = plateService.listPlateForCheckAdmin();
		
		return "listPlateForCheckAdmin";
	}
	
	
	/**
	 * 
	 * @return
	 */
	public String findPlateById(){
		
		plate = plateService.findPlateById(plateId);
		return "updateUI";
	}
	/**
	 * 给审核管理员提供查看页面
	 * @return
	 */
	public String lookForCheck(){
		
		plate = plateService.findPlateById(plateId);
		return "checkUI";
	}
	/**
	 * 审核  改变状态
	 * @return
	 */
	public String check(){
		
		plateService.check(plateId,stateId);
		return "listPlateForCheckAdmin";
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
	public int getFplateId() {
		return fplateId;
	}
	public void setFplateId(int fplateId) {
		this.fplateId = fplateId;
	}

	public int[] getProcessIds() {
		return processIds;
	}

	public void setProcessIds(int[] processIds) {
		this.processIds = processIds;
	}

	public int[] getAttentionIds() {
		return attentionIds;
	}

	public void setAttentionIds(int[] attentionIds) {
		this.attentionIds = attentionIds;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public Map<Integer, List<Plate>> getIndexMap() {
		return indexMap;
	}

	public void setIndexMap(Map<Integer, List<Plate>> indexMap) {
		this.indexMap = indexMap;
	}

	public List<IndexPlate> getIndexPlates() {
		return indexPlates;
	}

	public void setIndexPlates(List<IndexPlate> indexPlates) {
		this.indexPlates = indexPlates;
	}


	public IndexPlate getIndexPlate() {
		return indexPlate;
	}


	public void setIndexPlate(IndexPlate indexPlate) {
		this.indexPlate = indexPlate;
	}
	
	
	
}
