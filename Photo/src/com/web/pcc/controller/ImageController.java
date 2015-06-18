package com.web.pcc.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	private Logger log = PhotoUtil.getLogger();

	@RequestMapping(value="/upload.spring", method = RequestMethod.GET)
	public String printHello(ModelMap model) {

		model.addAttribute("image", new ImagePojo());
		return "upload_ss";
	}

	@RequestMapping(value="/upload1.spring",method=RequestMethod.POST)
	public ModelAndView laodImage1(@ModelAttribute("image") ImagePojo image)throws Exception  {
		log.debug("In ImageController.uploadImage");
		/*String tempLocation = System.getProperty("dir.home") +File.separator+"temp";
		log.debug("tempLocation"+tempLocation);*/
		ModelAndView modelAndView=new ModelAndView();

		if (!image.getImageFile().isEmpty()) {
			try {
				PhotoUtil photoUtil=new PhotoUtil();
				String fileName=photoUtil.saveImageToServer(image.getImageFile());
				modelAndView.addObject("fileName", fileName);
			} catch (Exception e) {
				modelAndView.addObject("failMessage", image.getImageFile().getOriginalFilename()+"=> "+e.getMessage());
			}
			modelAndView.setViewName("upload_ss");
		} else {
			modelAndView.addObject("emptyFile", "No file is been uploaded");
		}
		return modelAndView;

	}

	/* @RequestMapping(value = "/image/{image_id}", produces = MediaType.IMAGE_PNG_VALUE)
	    public ResponseEntity<byte[]> getImages(@PathVariable("img_id") Long img_id) throws IOException {

	        byte[] imageContent = is.getImages(img_id);
	        final HttpHeaders headers = new HttpHeaders();
	        headers.setContentType(MediaType.IMAGE_PNG);
	        return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	    }
	 */

};