package com.web.pcc.dao;

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
	public boolean saveImage(String filePath, String imageName, String imageDesc, String commentid) {
		log.debug("IN ImageDAOImpl.saveImage ");
		String sql="insert into t_image_main values(?,?,?,?)";
		jt.update(sql, filePath,imageName,imageDesc,commentid);

		return true;
	}
	
	RowMapper<ImagePojo> iMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			ImagePojo u=new ImagePojo();
			u.setImg_Url(rs.getString(1));
			u.setImageName(rs.getString(2));
			u.setImageDesc(rs.getString(3));
			u.setCommentid(rs.getString(4));
			return u;
		}
	};
	
	RowMapper<ImagePojo> cMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			ImagePojo cu=new ImagePojo();
				cu.setCommentidf(rs.getString(1));
				cu.setComments(rs.getString(2));
				log.debug(rs.getString(1));
				log.debug(rs.getString(2));
			return cu;
		}
	};
	
	//dispaly
	@Override
	public List<ImagePojo> viewAllImagesList() {
		
		log.debug("IN ImageDAOImpl.viewAllImages ");
		String sql="select img_url,title,description,commentid from t_image_main";
		List<ImagePojo> imagePojoList=  jt.query(sql, iMapper);
		log.debug("URL :"+imagePojoList);
		
		return imagePojoList;
	}

	public boolean addComment(String commentid, String comment) {
		log.debug("ImageDAOImpl.addComment");
		String sql="insert into t_image_info values(?,?)";
		int count=jt.update(sql,commentid,comment);

		return (count==1);
	}
	@Override
	public List<ImagePojo> viewComments(String commentidf) {
		log.debug("IN ImageDAOImpl.viewComments ");
		
		String sql="select commentidf,comments from t_image_info where commentidf='"+commentidf+"'";
		
		List<ImagePojo> commentPojoList=  jt.query(sql, cMapper);
		log.debug("URL :"+commentPojoList);
		
		return commentPojoList;
	}		
}
