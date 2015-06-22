package com.web.pcc.utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

public class PhotoUtil {
	
	private Logger log = PhotoUtil.getLogger();
	//log4j configurations
public static Logger getLogger(){
		
		Logger log = Logger.getLogger("LOGGER");
		
		return log;
	}
	
	//save image in server
	public String saveImageToServer(MultipartFile file)throws Exception{
		
		byte[] bytes = file.getBytes();

		// Creating the directory to store file
		String rootPath = "C:\\0MyData";
		log.debug("path"+rootPath);
		File dir = new File(rootPath + File.separator + "temp");
		if (!dir.exists())
			dir.mkdir();
		log.debug("dir path"+dir);

		// Create the file on server
		File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();

		log.debug("Server File Location="+ serverFile.getAbsolutePath());
		
		return serverFile.getAbsolutePath();
	}
 	// TODO insert multiple files

	
}
