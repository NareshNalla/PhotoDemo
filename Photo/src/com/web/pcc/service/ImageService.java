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
	
public boolean saveImage(String filePath, String imageName, String imageDesc) {
		log.debug("ImageService.uploadImage");
		boolean flag=idao.saveImage(filePath,imageName,imageDesc);
		log.debug("ImageService.uploadImage return :"+flag);
		return flag;
		
	}
	
public List<ImagePojo> viewAllImagesList() {
		
		System.out.println("UserSevice.userGroup");
		List<ImagePojo> imagePojoList=idao.viewAllImagesList();

		return imagePojoList;
	}

	
	}
