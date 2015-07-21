package com.web.pcc.pojo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ImagePojo {
	private String imgId;
	private String imageName;
	private String imageDesc;
	public String getImageDesc() {
		return imageDesc;
	}
	public void setImageDesc(String imageDesc) {
		this.imageDesc = imageDesc;
	}
	private MultipartFile imageFile;
	private String img_Url;
	private List<Object> imagesAll;
	private Object imageFileO;
	
	public List<Object> getImagesAll() {
		return imagesAll;
	}
	public void setImagesAll(List<Object> imagesAll) {
		this.imagesAll = imagesAll;
	}
	public Object getImageFileO() {
		return imageFileO;
	}
	public void setImageFileO(Object imageFileO) {
		this.imageFileO = imageFileO;
	}
	public String getImg_Url() {
		return img_Url;
	}
	public void setImg_Url(String img_Url) {
		this.img_Url = img_Url;
	}
	public String getImgId() {
		return imgId;
	}
	public void setImgId(String imgId) {
		this.imgId = imgId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public MultipartFile getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}
	

}
