package com.web.pcc.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.web.pcc.dao.ImageDAOImpl;
import com.web.pcc.utils.PhotoUtil;

@Service
public class ImageService {
	
	@Autowired
	private ImageDAOImpl idao;
			private Logger log = PhotoUtil.getLogger();
	public boolean uploadImage(int img_id, String img_title,
			MultipartFile img_data) {
		log.debug("ImageService.uploadImage");
		boolean flag=idao.uploadImage(img_id,img_title,img_data);
		log.debug("ImageService.uploadImage return :"+flag);
		return flag;
	}

	
	}
