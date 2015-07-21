package com.web.pcc.dao;

import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.web.pcc.pojo.ImagePojo;
import com.web.pcc.utils.PhotoUtil;

public class ImageDAOImpl implements  ImageDAO   {


	private JdbcTemplate jt;
	public void setJdbcTemplate(JdbcTemplate jt){
		this.jt=jt;
	}

	
	private Logger log = PhotoUtil.getLogger();
	
	@Override
	public boolean saveImage(String filePath, String imageName, String imageDesc) {
		log.debug("IN ImageDAOImpl.saveImage ");
		String sql="insert into t_image_url values(?,?,?)";
		jt.update(sql, filePath,imageName,imageDesc);

		return true;
	}
	RowMapper<ImagePojo> iMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			log.debug("In ImageDAOImpl::mapRow()");

			ImagePojo u=new ImagePojo();
			u.setImg_Url(rs.getString(1));
			u.setImageName(rs.getString(2));
			u.setImageDesc(rs.getString(3));
			
			return u;
		}
	};
	
	//dispaly
	@Override
	public List<ImagePojo> viewAllImagesList() {
		
		log.debug("IN ImageDAOImpl.viewAllImages ");
		String sql="select img_url,title,description from t_image_url";
		List<ImagePojo> imagePojoList=  jt.query(sql, iMapper);
		log.debug("URL :"+imagePojoList);
		
		return imagePojoList;
	}
	
	
		
}
