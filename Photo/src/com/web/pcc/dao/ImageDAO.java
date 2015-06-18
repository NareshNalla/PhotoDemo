package com.web.pcc.dao;

import org.springframework.web.multipart.MultipartFile;

public interface ImageDAO {

	boolean uploadImage(int img_id, String img_title,
			MultipartFile img_data) ;
	

}
