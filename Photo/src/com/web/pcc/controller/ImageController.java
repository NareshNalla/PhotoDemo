package com.web.pcc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.service.ImageService;
import com.web.pcc.utils.PhotoUtil;

@Controller
public class ImageController {

	@Autowired
	private ImageService is;

	@Autowired
	JdbcTemplate jt;

	ImagePojo imagePojo;

	private Logger log = PhotoUtil.getLogger();

	@RequestMapping(value="/upload1.spring",method=RequestMethod.POST)
	public ModelAndView laodImage1(@ModelAttribute("image") ImagePojo image)throws Exception  {
		log.debug("In ImageController.uploadImage");
		/*String tempLocation = System.getProperty("dir.home") +File.separator+"temp";
		log.debug("tempLocation"+tempLocation);*/
		ModelAndView modelAndView=new ModelAndView();
		PhotoUtil photoUtil=new PhotoUtil();
		
		String fileO_Name=image.getImageFile().getOriginalFilename();
		String tagName=image.getTagName();
		String tagid="";
		String commentid="";
		log.debug("ImageController.uploadImage :: fileO_Name:"+fileO_Name+" tagName:"+tagName+" tagid:"+tagid+" commentid:"+commentid);
		
		String filePath=photoUtil.saveImageToServer(image.getImageFile());
		String imageName=image.getImageFile().getOriginalFilename();
		String imageDesc=image.getImageDesc();
		

		if (!image.getImageFile().isEmpty()) {
			try {
				
				commentid="c"+"_"+imageName;
				tagid="t"+"_"+imageName;
				
				boolean flag=is.saveImage(filePath,imageName,imageDesc,commentid,tagid);
				boolean flag1=is.addComment(commentid,"");
				boolean flag2=is.addTag(tagid,tagName);
				boolean flag3=is.addTagNames(tagName);
				log.debug("In ImageController.uploadImage After Database hit flag="+flag+flag1+flag2+flag3);

				modelAndView.addObject("fileName", fileO_Name);
			} catch (Exception e) {
				modelAndView.addObject("failMessage", fileO_Name+"=> "+e.getMessage());
			}
			modelAndView.setViewName("upload");
		} else {
			modelAndView.addObject("emptyFile", "No file is been uploaded");
		}
		return new ModelAndView("index"); 
	}

	@RequestMapping(value="/addComment.spring",method=RequestMethod.POST)
	public ModelAndView addComment(@ModelAttribute("image") ImagePojo image){
		log.debug("ImageController.addComment");
		ModelAndView modelAndView=new ModelAndView();
		String comment=image.getComment();
		String commentid=image.getCommentid();
		log.debug(commentid+comment);
		boolean flag=is.addComment(commentid,comment);
		if(flag){
			return new ModelAndView("index");
		}
		return new ModelAndView("add_f");
	}
	
	@RequestMapping(value="/addTags.spring",method=RequestMethod.POST)
	public ModelAndView addTag(@ModelAttribute("image") ImagePojo image){
		log.debug("ImageController.addTag");
		ModelAndView modelAndView=new ModelAndView();
		String tagName=image.getTagName();
		String tagid=image.getTagid();
		log.debug("tagid:"+tagid +", tagName:"+tagName);
		/*TODO*/
		//iterate with String
		
		boolean flag=is.addTag(tagName,tagid);
		if(flag){
			return new ModelAndView("index");
		}
		return new ModelAndView("add_f");
	}
	
	@RequestMapping(value="/allimages.spring", method=RequestMethod.GET)
	public ModelAndView userHome(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("ImageController.userHome");

		String pageNos=(String)req.getParameter("pageNo");
		List<ImagePojo> l=is.viewAllImagesList();
		
		int size=l.size();
		int i=(int)Math.ceil(size/5.0);
		wr.setAttribute("pageNos", pageNos,wr.SCOPE_SESSION);
		wr.setAttribute("l", l, wr.SCOPE_SESSION);
		wr.setAttribute("i", i, wr.SCOPE_SESSION);
		System.out.println(i);

		int pageNo=Integer.parseInt(pageNos);
		if(pageNo>1){
			if(pageNo>i){
				pageNo=i;
			}}

		System.out.println(size);
		int start=pageNo-1;

		int first=(start*5);
		int last=first+5;

		if(last>size){
			last=size;
		}
		if(pageNo==1){

			System.out.println(size);
			List<ImagePojo> ll=l.subList(0, last);
			System.out.println("retrning index.jsp");
			return new ModelAndView("index","imagePojoList",ll);
		}
		List<ImagePojo> ll=l.subList(first, last);
		log.debug("retrning index.jsp");
		return new ModelAndView("index","imagePojoList",ll);
	}
	
	@RequestMapping(value="/viewComments.spring", method=RequestMethod.GET)
	public ModelAndView viewComments(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("ImageController.viewComments");

		String commentidf=req.getParameter("commentidf");
		log.debug("ImageController.viewComments commentidf="+commentidf);
		List<ImagePojo> l=is.viewComments(commentidf);
		log.debug("retrning index.jsp");
		
			return new ModelAndView("comments","viewcommentsList",l);
		}
	
		
};