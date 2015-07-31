package com.web.pcc.dao;

import java.util.List;

import com.web.pcc.pojo.ImagePojo;

public interface ImageDAO {

	boolean saveImage(String filePath,String imageName, String imageDesc,String commentid);
	List<ImagePojo> viewAllImagesList();
	List<ImagePojo> viewComments(String commentidf);
}
