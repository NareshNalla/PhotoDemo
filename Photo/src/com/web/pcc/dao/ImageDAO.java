package com.web.pcc.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.web.pcc.pojo.ImagePojo;

public interface ImageDAO {

	boolean uploadImage(int img_id, String img_title,
			MultipartFile img_data) ;

	boolean saveImage(String filePath);

	ImagePojo viewAllImages();

	List<ImagePojo> viewAllImagesList();
	

}
