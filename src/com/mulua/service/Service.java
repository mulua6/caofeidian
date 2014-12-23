package com.mulua.service;

import java.util.Collection;
import java.util.List;

import com.mulua.domain.AboutUs;
import com.mulua.domain.Admin;
import com.mulua.domain.Business;
import com.mulua.domain.CompanyProfile;
import com.mulua.domain.News;
import com.mulua.domain.Pictures;

public interface Service {
	
	public void saveCompanyProfile(CompanyProfile cp);
	public void saveNews(News n);
	public void saveBusiness(Business b);
	public void saveAboutUs(AboutUs au);
	public void saveAdmin(Admin ad);
	public void updateCompanyProfile(CompanyProfile cp);
	public void updateNews(News n);
	public void updateBusiness(Business b);
	public void updateAboutUs(AboutUs au);
	public void updateAdmin(Admin ad);
	public void deleteCompanyProfile(int id);
	public void deleteNews(int id);
	public void delete(int id);
	public void deleteBusiness(int id);
	public void deleteAboutUs(int id);
	public void deleteAdmin(int id);
	public CompanyProfile getCompanyProfile(int id);
	public List getAllCompanyProfile();
	public News getOne(int id);
	public List getManyNews();
	public List getManyNewsByType(int type);
	public Business getOneBusiness(int id);
	public List getManyBusiness();
	public void saveOrUpdateCP(CompanyProfile cp);
	public List<AboutUs> getUs();
	public Collection<Pictures>  getUrls(int typeId);
	public Collection<Pictures>  getPicList();
	public Pictures getLogo(int typeId);
	public AboutUs getUsById(int id);
	public void deletePic(int id);
	public void savePic(Pictures picture);
	public List getBusinessBytype(int typeId);
	
}
