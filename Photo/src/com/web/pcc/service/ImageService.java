package com.web.pcc.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.web.pcc.dao.ImageDAOImpl;
import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.utils.PhotoUtil;

@Service
public class ImageService {
	
	@Autowired
	private ImageDAOImpl idao;
	private ImagePojo ip;
			private Logger log = PhotoUtil.getLogger();
	public boolean uploadImage(int img_id, String img_title,
			MultipartFile img_data) {
		log.debug("ImageService.uploadImage");
		boolean flag=idao.uploadImage(img_id,img_title,img_data);
		log.debug("ImageService.uploadImage return :"+flag);
		return flag;
	}
	public boolean saveImage(String filePath) {
		log.debug("ImageService.uploadImage");
		boolean flag=idao.saveImage(filePath);
		log.debug("ImageService.uploadImage return :"+flag);
		return flag;
		
	}
	public ImagePojo viewAllImages() {
		
		System.out.println("UserSevice.userGroup");
		ImagePojo imagePojo=idao.viewAllImages();

		return imagePojo;
	}
public List<ImagePojo> viewAllImagesList() {
		
		System.out.println("UserSevice.userGroup");
		List<ImagePojo> imagePojoList=idao.viewAllImagesList();

		return imagePojoList;
	}

	
	}
