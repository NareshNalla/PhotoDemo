package com.web.pcc.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.pcc.dao.ImageDAOImpl;
import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.utils.PhotoUtil;

@Service
public class ImageService {
	
	@Autowired
	private ImageDAOImpl idao;
	private ImagePojo ip;
			private Logger log = PhotoUtil.getLogger();
	
public boolean saveImage(String filePath, String imageName, String imageDesc,String commentid,String tagid) {
		log.debug("ImageService.saveImage");
		boolean flag=idao.saveImage(filePath,imageName,imageDesc,commentid,tagid);
		log.debug("ImageService.saveImage return :"+flag);
		return flag;
		
	}
	
public List<ImagePojo> viewAllImagesList() {
		
		log.debug("ImageService.viewAllImagesList");
		List<ImagePojo> imagePojoList=idao.viewAllImagesList();

		return imagePojoList;
	}

public boolean addComment(String commentid, String comment) {
	log.debug("ImageService.addComment");
	boolean flag=idao.addComment(commentid,comment);
	return flag;
}
public boolean addTag(String tagid, String tagName) {
	log.debug("ImageService.addTag:: tagid:"+tagid +", tagName:"+tagName);
	boolean flag=idao.addTag(tagid,tagName);
	return flag;
}

public boolean addTagNames(String tagName) {
	boolean flag=idao.addTagNames(tagName);
	return flag;
}


	public List<ImagePojo> viewComments(String commentidf) {
		log.debug("ImageService.viewComments");
		List<ImagePojo> imagePojoList=idao.viewComments(commentidf);
	
		return imagePojoList;
	}
	public List<ImagePojo> viewTagMenu() {
		log.debug("ImageService.viewTagMenu");
		List<ImagePojo> tagPojoList=idao.viewTagMenu();
	
		return tagPojoList;
	}
public List<ImagePojo> viewTags() {
	log.debug("ImageService.viewTags");
	List<ImagePojo> imagePojoList=idao.viewTags();

	return imagePojoList;
}

public List<ImagePojo> tagNameSearch(String tagName) {
	
		log.debug("ImageService.tagNameSearch");
		List<ImagePojo> flag=idao.tagNameSearch(tagName);
		return flag;
	}

public List<ImagePojo> imagesByTag(String bytag) {
	log.debug("ImageService.imagesByTag");
	List<ImagePojo> imagePojoList=idao.imagesByTag(bytag);

	return imagePojoList;
}
}
