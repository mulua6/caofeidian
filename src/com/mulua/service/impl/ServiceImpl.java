package com.mulua.service.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.mulua.dao.AboutUsDao;
import com.mulua.dao.AdminDao;
import com.mulua.dao.BusinessDao;
import com.mulua.dao.CompanyProfileDao;
import com.mulua.dao.NewsDao;
import com.mulua.dao.PicturesDao;
import com.mulua.domain.AboutUs;
import com.mulua.domain.Admin;
import com.mulua.domain.Business;
import com.mulua.domain.CompanyProfile;
import com.mulua.domain.News;
import com.mulua.domain.Pictures;
import com.mulua.service.Service;

public class ServiceImpl implements Service {
	private CompanyProfileDao cpDao;
	private NewsDao   nDao;
	private BusinessDao bDao;
	private AboutUsDao aDao;
	private AdminDao adminDao;
	private PicturesDao peDao;
	
//增加
	public void saveCompanyProfile(CompanyProfile cp){
		cpDao.saveEntry(cp);
	}
	public void saveNews(News n){
		nDao.saveEntry(n);
	}
	public void saveBusiness(Business b){
		bDao.saveEntry(b);
	}
	public void saveAboutUs(AboutUs au){
		aDao.saveEntry(au);
	}
	public void saveAdmin(Admin ad){
		adminDao.saveEntry(ad);
	}
	
	public AboutUs getUsById(int id) {
		return aDao.getEntryById(id);
	}
//修改
	public void updateCompanyProfile(CompanyProfile cp){
		cpDao.updateEntry(cp);
	}
	public void updateNews(News n){
		nDao.updateEntry(n);
	}
	public void updateBusiness(Business b){
		bDao.updateEntry(b);
	}
	public void updateAboutUs(AboutUs au){
		aDao.updateEntry(au);
	}
	public void updateAdmin(Admin ad){
		adminDao.updateEntry(ad);
	}
//删除
	public void deleteCompanyProfile(int id){
		cpDao.deleteEntry(id);
	}
	public void deleteNews(int id){
		nDao.deleteEntry(id);
	}
	public void deleteBusiness(int id){
		bDao.deleteEntry(id);
	}
	public void delete(int id){
		bDao.deleteEntry(id);
	}
	
	public void deleteAboutUs(int id){
		aDao.deleteEntry(id);
	}
	public void deleteAdmin(int id){
		adminDao.deleteEntry(id);
	}
	public void deletePic(int id) {
		peDao.deleteEntry(id);
	}
	//查询公司简介
	public CompanyProfile getCompanyProfile(int typeId){
		List l = (List) cpDao.getAllEntryByType(typeId);
		CompanyProfile c= (CompanyProfile) l.get(0);
		return c;
	}
	public List getAllCompanyProfile(){
		List<CompanyProfile>  list= (List<CompanyProfile>) cpDao.getAllEntry();
		return list;
	}
	
	
	
	//查询新闻
	public News getOne(int id){
		News news = nDao.getEntryById(id);
		return news;
	}
	//查询新闻列表
	public List getManyNews(){
		List list = (List) nDao.getAllEntry();
		return list;
	}
	//查询新闻列表
	public List getManyNewsByType(int id){
		List list = (List) nDao.getAllEntryByType(id);
		return list;
	}
	public List getBusinessBytype(int id) {
		List list = (List) bDao.getAllEntryByType(id);
		return list;
	}
	
	//查询业务
	public Business getOneBusiness(int id){
		Business business = bDao.getEntryById(id);
		return business;
	}
	//查询业务列表
	public List getManyBusiness(){
		List list = (List) bDao.getAllEntry();
		return list;
	}
	//保存或更新公司简介
	public void saveOrUpdateCP(CompanyProfile cp){
		cpDao.saveOrUpdate(cp);
	}
	
	public List<AboutUs> getUs() {
		return (List<AboutUs>) aDao.getAllEntry();
	}
	
	
	public Collection<Pictures> getUrls(int typeId) {
		return peDao.getPics(typeId);
	}
	public Collection<Pictures> getPicList() {
		return peDao.getPicList();
	}
	
	//查询公司的logo的url
	public Pictures getLogo(int typeId) {
		return peDao.getLogo(typeId);
	}
	//上传图片
	public void savePic(Pictures picture) {
		peDao.saveEntry(picture);
	}
	
	
	/*****************************************************************/
	public CompanyProfileDao getCpDao() {
		return cpDao;
	}
	public void setCpDao(CompanyProfileDao cpDao) {
		this.cpDao = cpDao;
	}
	public NewsDao getnDao() {
		return nDao;
	}
	public void setnDao(NewsDao nDao) {
		this.nDao = nDao;
	}
	public BusinessDao getbDao() {
		return bDao;
	}
	public void setbDao(BusinessDao bDao) {
		this.bDao = bDao;
	}
	public AboutUsDao getaDao() {
		return aDao;
	}
	public void setaDao(AboutUsDao aDao) {
		this.aDao = aDao;
	}
	public AdminDao getAdminDao() {
		return adminDao;
	}
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	public PicturesDao getPeDao() {
		return peDao;
	}
	public void setPeDao(PicturesDao peDao) {
		this.peDao = peDao;
	}


	


	

	

	
	
	
	
}
