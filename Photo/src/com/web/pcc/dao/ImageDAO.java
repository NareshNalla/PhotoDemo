package com.web.pcc.dao;

import java.util.List;

import com.web.pcc.pojo.ImagePojo;

public interface ImageDAO {

	boolean saveImage(String filePath,String imageName, String imageDesc);
	List<ImagePojo> viewAllImagesList();
}
