package com.mulua.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.mulua.domain.Page;
import com.mulua.domain.Pictures;
import com.mulua.service.Service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BusinessAction extends ActionSupport{
	private Service s ;
	private CompanyProfile cp  = new CompanyProfile();
	private News news  = new News();
	private Business business  = new Business();
	private AboutUs aboutUs  = new AboutUs();
	private Admin admin  = new Admin();
	private Pictures picture  = new Pictures();
	private int id ;
	private int typeId;
	//页面请求的第几页
	private int page;
	//一共有几页数据
	private List  pages  = new ArrayList();
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
	private String companyName = null;
	private File photo = null;
	private String photoFileName = null;
	
	private List<CompanyProfile> cpList = new ArrayList<CompanyProfile>();
	private List<News> newsList = new ArrayList<News>();
	private List<Business> businessList = new ArrayList<Business>();
	private List<AboutUs> aboutUsList = new ArrayList<AboutUs>();
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
		return "action2US";
	}

	public String saveCP(){
		cp.setContent(content);
		cp.setCreateTime(new Date());
		s.saveCompanyProfile(cp);
		return "welcome";
	}
	
/*	public String  getPicList(){
		picList =  (List<Pictures>) s.getPicList();
		ActionContext.getContext().put("picList", picList);
		return "listPics";
	}*/
	
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
	public String findCP(){
		cp = s.getCompanyProfile(id);
		
		content =cp.getContent().substring(0,150)+"……";
		return "index";
	}
	public String findCPById(){
		cp = s.getCompanyProfile(id);
		content =cp.getContent();
		companyName = cp.getCompanyName();
		return "updateCP";
	}
	public String findCPs(){
		cpList = s.getAllCompanyProfile();
		return "listCP";
	}
	
	public String updateCP(){
		cp.setId(id);
		cp.setContent(content);
		cp.setUpdateTime(new Date());
		s.updateCompanyProfile(cp);
		return "action2CP";
	}
	
	
	
	public String saveNews(){
		news.setTitle(title);
		news.setTypeId(typeId);
		news.setCreator(this.getName(typeId));
		news.setContent(content);
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			System.out.println(sdf.format(d));
			news.setCreateTime(sdf.parse(sdf.format(d)));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		s.saveNews(news);
		
		List list= s.getManyNews();
		session.setAttribute("newsList"+typeId, list);
		return "action2News";
	}
	public String updateNews(){
		news.setId(id);
		news.setTitle(title);
		news.setContent(content);
		news.setCreateTime(new Date());
		s.updateNews(news);
		//刷新缓存
		List list= s.getManyNews();
		session.setAttribute("newsList"+typeId, list);
		return "action2News";
	}
	
	
	
	public String findAllNews(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("newsList"+typeId);
		if(list==null){
			list= s.getManyNews();
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
		newsList = list.subList(start, end);
		return "listNews";
	}
	public String findAllBusiness(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List) session.getAttribute("businessList"+typeId);
		if(list==null){
			list= s.getManyBusiness();
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
		businessList = list.subList(start, end);
		return "listBusiness";
	}
	public String getPicList(){
		List list = null;
		session = ServletActionContext.getRequest().getSession();
		list = (List<Pictures>) session.getAttribute("picList"+typeId);
		if(list==null){
			list= (List<Pictures>) s.getPicList();
			session.setAttribute("picList"+typeId, list);
		}
		double d = (double)(list.size()/15.0);
		System.out.println(list.size());
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
		picList = list.subList(start, end);
		ActionContext.getContext().put("picList", picList);
		return "listPics";
	}
	
	

	public String findOneNews(){
		news = s.getOne(id);
		return "updateNews";
	}
	
	
	
	/*************业务**************/
	public String saveBusiness(){
		business.setTitle(title);
		business.setContent(content);
		business.setTypeId(typeId);
		business.setCreator(this.getName(typeId));
		business.setCreateTime(new Date());
		s.saveBusiness(business);
		
		List list= s.getManyBusiness();
		session.setAttribute("businessList"+typeId, list);
		return "action2Business";
	}
	public String updateBusiness(){
		business.setId(id);
		business.setTitle(title);
		business.setContent(content);
		business.setCreateTime(new Date());
		s.updateBusiness(business);
		List list= s.getManyBusiness();
		session.setAttribute("businessList"+typeId, list);
		return "action2Business";
	}
	
/*	public String findAllBusiness(){
		businessList = s.getManyBusiness();
		return "listBusiness";
	}*/
	public String findOneBusiness(){
		business = s.getOneBusiness(id);
		return "updateBusiness";
	}
	
	public String findUs(){
		aboutUs = s.getUsById(id);
		return "updateUs";
	}
	
	public String findAllUs(){
		aboutUsList = s.getUs();
		return "listUs";
	}
	
	
	
	
	
	/*************删除******************/
	public String deleteAdmin(){
		s.deleteAdmin(id);
		return "welcome";
	}
	public String deleteNews(){
		s.deleteNews(id);
		List list= s.getManyNews();
		session.setAttribute("newsList"+typeId, list);
		return "action2News";
	}
	public String deleteBusiness(){
		s.deleteBusiness(id);
		List list= s.getManyBusiness();
		session.setAttribute("businessList"+typeId, list);
		return "action2Business";
	}
	public String deletePic(){
		s.deletePic(id);
		List list= (List<Pictures>) s.getPicList();
		session.setAttribute("picList"+typeId, list);
		return "action2Pic";
	}
	
	//上传图片
	public String uploadPic(){
        if(photo==null ){
               return "action2Pic";
        }else{
        	picture.setTitle(title);
        	picture.setTypeId(typeId);
        	picture.setUpor(this.getName(typeId));
        	
        	
        	picture.setCreateTime(new Date());
        	
        	try {
                InputStream in = new FileInputStream(photo);
                String storeDirectory = ServletActionContext.getServletContext().getRealPath("/files/upload");
                //将路径存入数据库
                picture.setUrl(photoFileName);
                OutputStream out = new FileOutputStream(storeDirectory+"/"+photoFileName);
                int len = -1;
                byte b[] = new byte[1024];
                while((len=in.read(b))!=-1){
                    out.write(b, 0, len);
                }
                in.close();
                out.close();
                //保存用户
                 s.savePic( picture);
                 
             	List list= (List<Pictures>) s.getPicList();
        		session.setAttribute("picList"+typeId, list);
                return "action2Pic";
            }  catch (Exception e) {
                e.printStackTrace();
                return ERROR;
            }
        	
        	
        }
        
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

	public List<CompanyProfile> getCpList() {
		return cpList;
	}

	public void setCpList(List<CompanyProfile> cpList) {
		this.cpList = cpList;
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

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public List<AboutUs> getAboutUsList() {
		return aboutUsList;
	}

	public void setAboutUsList(List<AboutUs> aboutUsList) {
		this.aboutUsList = aboutUsList;
	}

	public Pictures getPicture() {
		return picture;
	}

	public void setPicture(Pictures picture) {
		this.picture = picture;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public void setPicList(List<Pictures> picList) {
		this.picList = picList;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
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


	
	
}
