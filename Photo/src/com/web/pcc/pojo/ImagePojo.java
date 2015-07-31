package com.web.pcc.pojo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ImagePojo {
	
	private String imageName;
	private String imageDesc;
	private MultipartFile imageFile;
	private String img_Url;
	private List<Object> imagesAll;
	private Object imageFileO;

	
	private String commentid;
	private String comment;
	
	private String commentidf;
	private String comments;
	
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCommentidf() {
		return commentidf;
	}
	public void setCommentidf(String commentidf) {
		this.commentidf = commentidf;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getCommentid() {
		return commentid;
	}
	public void setCommentid(String commentid) {
		this.commentid = commentid;
	}
	
	public String getImageDesc() {
		return imageDesc;
	}
	public void setImageDesc(String imageDesc) {
		this.imageDesc = imageDesc;
	}
	
	
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
