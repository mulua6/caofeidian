package com.mulua.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.mulua.domain.AboutUs;
import com.mulua.domain.Admin;
import com.mulua.domain.Business;
import com.mulua.domain.CompanyProfile;
import com.mulua.domain.News;
import com.mulua.domain.Pictures;
import com.mulua.service.Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class webAction extends ActionSupport{
	private static final Double PAGESIZEFORNEWS = 9.0;
	private Service s ;
	private CompanyProfile cp  = new CompanyProfile();
	private News news  = new News();
	private Business business  = new Business();
	private AboutUs aboutUs  = new AboutUs();
	private Admin admin  = new Admin();
	//页面请求的第几页
	private int page;
		//一共有几页数据
	private List  pages  = new ArrayList();
	private int id ;
	private int typeId ;
	private Date createTime= null;
	private Date updateTime= null;
	private String content = null;
	private String creator = null;
	private String url = null;
	private String address = null;
	private String contacts = null;
	private String fax = null;
	private String mail = null;
	private String name = null;
	private String phone = null;
	private String tel = null;
	private String zipCode = null;
	private String userName = null;
	private String passWord = null;
	private String title = null;
	private String logo = null;
	private String urls = null;
	private String head = null;
	private String companyName = null;
	private List<News> newsList = new ArrayList<News>();
	private List<Business> businessList = new ArrayList<Business>();
	private List<Pictures> picList = new ArrayList<Pictures>();
	HttpServletRequest request= null;
	HttpSession session = null;
	
	public String updateAboutUs(){
		aboutUs.setId(id);
		aboutUs.setAddress(address);
		aboutUs.setContacts(contacts);
		aboutUs.setFax(fax);
		aboutUs.setMail(mail);
		aboutUs.setName(name);
		aboutUs.setPhone(phone);
		aboutUs.setTel(tel);
		aboutUs.setZipCode(zipCode);
		s.updateAboutUs(aboutUs);
		return "welcome";
	}

	public String saveCP(){
		cp.setContent(content);
		cp.setCreateTime(new Date());
		s.saveCompanyProfile(cp);
		return "welcome";
	}
	

	public String saveAdmin(){
		admin.setUserName(userName);
		admin.setPassWord(passWord);
		admin.setPhone(phone);
		s.saveAdmin(admin);
		return "index";
	}
	public String updateAdmin(){
		admin.setId(id);
		admin.setUserName(userName);
		admin.setPassWord(passWord);
		admin.setPhone(phone);
		s.updateAdmin(admin);
		return "index";
	}
	
	//主页查找公司简介的一部分
	public String findCP(int typeId){
		cp = s.getCompanyProfile(typeId);
		
		content =cp.getContent().substring(0,150)+"……";
		return "index";
	}
	public String index_jt(){
		findCP(1);
		//findAllNews();
		typeId = 1;
		findAllNewsByTypeForIndex();
		findAllBusinessByTypeIdForIndex();
		getPics();
		return "index_jt";
	}
	
	//各个分公司的主页
	public String index(){
		//得到公司简介
		findCP(typeId);
		//得到新闻列表
		findAllNewsByTypeForIndex();
		findAllBusinessByTypeIdForIndex();
		//得到公司logo
		logo = getLogos();
		head = getName(typeId);
		getPics();
		return "index";
	}
	public String getLogos(){
		Pictures p = s.getLogo(typeId);
		head = getName(p.getTypeId());
		return p.getUrl();
	}
	public void getPics(){
		picList =  (List<Pictures>) s.getUrls(typeId);
	}
	
	
	public String companyCP(){
		cp = s.getCompanyProfile(typeId);
		
		content =cp.getContent();
		companyName = cp.getCompanyName();
		return "company";
	}
	public String companyCP_jt(){
		cp = s.getCompanyProfile(typeId);
		
		content =cp.getContent();
		return "company_jt";
	}
	public String updateCP(){
		cp.setId(id);
		cp.setContent(content);
		cp.setUpdateTime(new Date());
		s.updateCompanyProfile(cp);
		return "welcome";
	}
	
	
	
	public String saveNews(){
		news.setTitle(title);
		news.setTypeId(typeId);
		news.setCreator(this.getName(typeId));
		news.setContent(content);
		news.setCreateTime(new Date());
		s.saveNews(news);
		List list= s.getManyNewsByType(typeId);
		session.setAttribute("newsList"+typeId, list);
		return "action2News";
	}
	public String updateNews(){
		news.setId(id);
		news.setTitle(title);
		news.setContent(content);
		news.setCreateTime(new Date());
		s.updateNews(news);
		return "action2News";
	}

	public String findAllNews(){
		newsList = s.getManyNews();
		return "listNews";
	}
	public String findAllNewsByTypeForIndex(){
		newsList = s.getManyNewsByType(typeId);
		return "listNews";
	}
	public String findOneNews(){
		news = s.getOne(id);
		ActionContext.getContext().put("news", news);
		return "viewNews";
	}
	public String findOneNews_jt(){
		news = s.getOne(id);
		ActionContext.getContext().put("news", news);
		return "viewNews_jt";
	}
	
	
	
	public String findAllNewsByType(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("newsList"+typeId);
		if(list==null){
			list= s.getManyNewsByType(typeId);
			session.setAttribute("newsList"+typeId, list);
		}
		double d = (double)(list.size()/15.0);
		int tem =  (int) Math.ceil(d);
		pages = new ArrayList();
		for(int i=0;i<tem;i++){
			pages.add(1);
		}
		page = page;
		int start =0;
		if(page!=1){
			start = (page-1)*15;
		}
		int end = page*15;
		if(end>list.size()){
			end = list.size();
		}
		News n = (News)list.get(0);
		companyName = n.getCreator();
		if(list.size()<1){
			newsList = list;
		}else{
			newsList = list.subList(start, end);
		}
		return "listNews";
	}
	public String findAllNewsByType_jt(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("newsList"+typeId);
		if(list==null){
			list= s.getManyNewsByType(typeId);
			session.setAttribute("newsList"+typeId, list);
		}
		double d = (double)(list.size()/PAGESIZEFORNEWS);
		int tem =  (int) Math.ceil(d);
		pages = new ArrayList();
		for(int i=0;i<tem;i++){
			pages.add(1);
		}
		page = page;
		int start =0;
		if(page!=1){
			start = (int) ((page-1)*PAGESIZEFORNEWS);
		}
		int end = (int) (page*PAGESIZEFORNEWS);
		if(end>list.size()){
			end = list.size();
		}
		if(list.size()<1){
			newsList = list;
		}else{
			newsList = list.subList(start, end);
		}
		return "listNews_jt";
	}
	public String getBusinessBytype(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("businessList"+typeId);
		if(list==null){
			list= s.getBusinessBytype(typeId);
			session.setAttribute("businessList"+typeId, list);
		}
		double d = (double)(list.size()/PAGESIZEFORNEWS);
		int tem =  (int) Math.ceil(d);
		pages = new ArrayList();
		for(int i=0;i<tem;i++){
			pages.add(1);
		}
		page = page;
		int start =0;
		if(page!=1){
			start = (int) ((page-1)*PAGESIZEFORNEWS);
		}
		int end = (int) (page*PAGESIZEFORNEWS);
		if(end>list.size()){
			end = list.size();
		}
		if(list.size()<1){
			businessList = list;
		}else{
			businessList = list.subList(start, end);
		}
		Business b = (Business) list.get(0);
		companyName = b.getCreator();
		typeId = b.getTypeId();
		ActionContext.getContext().put("businessList", businessList);
		return "listBusiness";
	}
	public String getBusinessBytype_jt(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("businessList"+typeId);
		if(list==null){
			list= s.getBusinessBytype(typeId);
			session.setAttribute("businessList"+typeId, list);
		}
		double d = (double)(list.size()/15.0);
		int tem =  (int) Math.ceil(d);
		pages = new ArrayList();
		for(int i=0;i<tem;i++){
			pages.add(1);
		}
		page = page;
		int start =0;
		if(page!=1){
			start = (page-1)*15;
		}
		int end = page*15;
		if(end>list.size()){
			end = list.size();
		}
		if(list.size()<1){
			businessList = list;
		}else{
			businessList = list.subList(start, end);
		}		ActionContext.getContext().put("businessList", businessList);
		return "listBusiness_jt";
	}
	
	
	/*************业务**************/
	public String saveBusiness(){
		business.setTitle(title);
		business.setContent(content);
		business.setTypeId(typeId);
		business.setCreator(this.getName(typeId));
		business.setCreateTime(new Date());
		s.saveBusiness(business);
		return "action2Business";
	}
	public String updateBusiness(){
		business.setId(id);
		business.setTitle(title);
		business.setContent(content);
		business.setCreateTime(new Date());
		s.updateBusiness(business);
		return "action2Business";
	}
	
	public String findAllBusiness(){
		businessList = s.getManyBusiness();
		
		ActionContext.getContext().put("businessList", businessList);
		return "listBusiness";
	}
	public String findAllBusinessByTypeIdForIndex(){
		businessList = s.getBusinessBytype(typeId);
		
		ActionContext.getContext().put("businessList", businessList);
		return "listBusiness";
	}
	public String findOneBusiness(){
		business = s.getOneBusiness(id);
		return "updateBusiness";
	}
	
	public String findUs(){
		aboutUs = s.getUsById(typeId);
		ActionContext.getContext().put("aboutUs", aboutUs);
		return "aboutUs";
	}
	public String findUs_jt(){
		aboutUs = s.getUsById(typeId);
		ActionContext.getContext().put("aboutUs", aboutUs);
		return "aboutUs_jt";
	}
	
	
	
	
	
	/*************删除******************/
	public String deleteAdmin(){
		s.deleteAdmin(id);
		return "welcome";
	}
	public String deleteNews(){
		s.deleteNews(id);
		return "action2News";
	}
	public String deleteBusiness(){
		s.deleteBusiness(id);
		return "action2Business";
	}
	
	
	
	private String getName(int typeId){
		String id = typeId+"";
		String name = null;
		if("1".equals(id)){
			name = "河南思齐集团";
		}else if("2".equals(id)){
			name = "郑州思齐不动产有限公司";
		}else if("3".equals(id)){
			name = "河南思齐置业有限公司";
		}else if("4".equals(id)){
			name = "河南思齐建设有限公司";
		}else if("5".equals(id)){
			name = "河南思齐评估有限公司";
		}
		return name;
	}
	
	
	
	
	
	/******************************************************************************************/
	public Service getS() {
		return s;
	}
	public void setS(Service s) {
		this.s = s;
	}
	public CompanyProfile getCp() {
		return cp;
	}
	public void setCp(CompanyProfile cp) {
		this.cp = cp;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public Date getCreateTime() {
		return createTime;
	}




	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}




	public Date getUpdateTime() {
		return updateTime;
	}




	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}




	public String getCreator() {
		return creator;
	}




	public void setCreator(String creator) {
		this.creator = creator;
	}




	public String getUrl() {
		return url;
	}




	public void setUrl(String url) {
		this.url = url;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	public AboutUs getAboutUs() {
		return aboutUs;
	}

	public void setAboutUs(AboutUs aboutUs) {
		this.aboutUs = aboutUs;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Business> getBusinessList() {
		return businessList;
	}

	public void setBusinessList(List<Business> businessList) {
		this.businessList = businessList;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getUrls() {
		return urls;
	}

	public void setUrls(String urls) {
		this.urls = urls;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public List<Pictures> getPicList() {
		return picList;
	}

	public void setPicList(List<Pictures> picList) {
		this.picList = picList;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List getPages() {
		return pages;
	}

	public void setPages(List pages) {
		this.pages = pages;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
}
