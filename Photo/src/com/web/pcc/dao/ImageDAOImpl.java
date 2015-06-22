package com.web.pcc.dao;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.MultipartFile;

import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.utils.PhotoUtil;

public class ImageDAOImpl implements  ImageDAO   {


	private JdbcTemplate jt;
	public void setJdbcTemplate(JdbcTemplate jt){
		this.jt=jt;
	}

	private InputStream is;
	private Logger log = PhotoUtil.getLogger();
	
	
	public boolean uploadImage(int img_id, String img_title,
			MultipartFile img_data) {
		log.debug("IN ImageDAOImpl.uploadImage ");


		try {
			is = img_data.getInputStream();
		} catch (IOException e) {

			e.printStackTrace();
		} 	  
		final int len=(int)img_data.getSize();
		PreparedStatementSetter pss= new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

				ps.setInt(1, img_id);
				ps.setString(2,img_title);
				ps.setBinaryStream(3, is,len);
				
				String tempLocation = System.getProperty("dir.home") +File.separator+"temp";
				log.debug("tempLocation"+tempLocation);
			}
		};

		String sql="insert into t_image_details values(?,?,?)";
		jt.update(sql, pss);

		return true;
	}

	@Override
	public boolean saveImage(String filePath) {
		log.debug("IN ImageDAOImpl.saveImage ");
		String sql="insert into t_image_url values(?)";
		jt.update(sql, filePath);

		return true;
	}
	RowMapper<ImagePojo> iMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			log.debug("In ImageDAOImpl::mapRow()");

			ImagePojo u=new ImagePojo();
			u.setImg_Url(rs.getString(1));
			
			return u;
		}
	};
	
	//dispaly
	@Override
	public ImagePojo viewAllImages() {
		
		log.debug("IN ImageDAOImpl.viewAllImages ");
		String sql="select img_url from t_image_url";
		ImagePojo imagePojo=  jt.queryForObject(sql, iMapper);
		log.debug("URL :"+imagePojo.getImg_Url());
		
		return imagePojo;
	}
	@Override
	public List<ImagePojo> viewAllImagesList() {
		
		log.debug("IN ImageDAOImpl.viewAllImages ");
		String sql="select img_url from t_image_url";
		List<ImagePojo> imagePojoList=  jt.query(sql, iMapper);
		log.debug("URL :"+imagePojoList);
		
		return imagePojoList;
	}
	
	
		
}
