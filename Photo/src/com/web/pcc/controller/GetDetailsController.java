package com.web.pcc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.service.ImageService;
import com.web.pcc.utils.PhotoUtil;

@Controller
@RequestMapping(value="/get/", method=RequestMethod.GET)
public class GetDetailsController {
	/**
	 * Naresh Nalla for response in json
	 */

	@Autowired
	private ImageService is;

	@Autowired
	JdbcTemplate jt;

	ImagePojo imagePojo;

	private Logger log = PhotoUtil.getLogger();


	@RequestMapping(value="images.spring", method=RequestMethod.GET)
	public @ResponseBody List<ImagePojo> userHome(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("GetDetailsController.userHome");


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
			System.out.println("retrning users.jsp");
			return ll;
		}
		List<ImagePojo> ll=l.subList(first, last);
		log.debug("retrning profile.jsp");
		return ll;
	}
	@RequestMapping(value="/tagmenu.spring", method=RequestMethod.GET)
	public  @ResponseBody List<ImagePojo> viewTagMenu(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("GetDetailsController.viewComments");
		List<ImagePojo> l=is.viewTagMenu();
		log.debug("retrning profile.jsp");

		return l; 
	}
	@RequestMapping(value="/viewComments.spring", method=RequestMethod.GET)
	public  @ResponseBody List<ImagePojo> viewComments(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("GetDetailsController.viewComments");

		String commentidf=req.getParameter("commentidf");
		log.debug("ImageController.viewComments commentidf="+commentidf);
		List<ImagePojo> l=is.viewComments(commentidf);
		log.debug("retrning profile.jsp");

		return l; 
	}
	@RequestMapping(value="/viewTags.spring", method=RequestMethod.GET)
	public  @ResponseBody List<ImagePojo> viewTags(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("GetDetailsController.viewTags");
		List<ImagePojo> l=is.viewTags();
		log.debug("retrning profile.jsp");

		return l; 
	}

	@RequestMapping(value="/tagNameSearch.spring",method=RequestMethod.GET)
	public  @ResponseBody List<ImagePojo> tagNameSearch(HttpServletRequest req,HttpServletResponse res,WebRequest wr){
		log.debug("UserController.tagNameSearch");

		String tagName=(String)req.getParameter("tagName");
		List<ImagePojo> l=is.tagNameSearch(tagName);
		System.out.println("retrning users.jsp");
		return l;

	}
	@RequestMapping(value="imagesbytag.spring", method=RequestMethod.GET)
	public @ResponseBody List<ImagePojo> imagesByTag(HttpServletRequest req,WebRequest wr)throws Exception{
		log.debug("GetDetailsController.imagesByTag");


		String bytag=(String)req.getParameter("bytag");
		List<ImagePojo> l=is.imagesByTag(bytag);
		System.out.println("retrning users.jsp");
		log.debug("retrning index.jsp");
		return l;
	}



};