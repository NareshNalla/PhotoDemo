package com.web.pcc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
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
	public boolean saveImage(String filePath, String imageName, String imageDesc, String commentid, String tagid ) {
		log.debug("In ImageDAOImpl.saveImage :: Values to insert in to DB ");
		log.debug("filePath:"+filePath+"\n imageName:"+imageName+" \n imageDesc:"+imageDesc+" \n commentid:"+commentid+" \n tagid:"+tagid);
		String sql="insert into t_image_main values(?,?,?,?,?)";
		jt.update(sql, filePath,imageName,imageDesc,commentid,tagid);
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
	/*tagmenu mapper*/
	RowMapper<ImagePojo> tmMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			ImagePojo tm=new ImagePojo();
				tm.setTagName(rs.getString(1));
				
				log.debug(rs.getString(1));
				
			return tm;
		}
	};
	
	RowMapper<ImagePojo> tMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			ImagePojo tu=new ImagePojo();
				tu.setTagid(rs.getString(1));
				tu.setTagName(rs.getString(2));
				
			return tu;
		}
	};
	/*tagid selction */
	RowMapper<ImagePojo> tagidMapper= new RowMapper<ImagePojo>(){
		@Override
		public ImagePojo mapRow(ResultSet rs, int index) throws SQLException {
			ImagePojo i=new ImagePojo();
			
			i.setTagid(rs.getString(1));
			i.setTagName(rs.getString(2));
			return i;
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
		String sql="insert into t_image_comments values(?,?)";
		int count=jt.update(sql,commentid,comment);

		return (count==1);
	}
	public boolean addTag(String tagid, String tagName) {
		log.debug("ImageDAOImpl.addComment tagid:"+tagid +", tagName:"+tagName);
		String sql="insert into t_image_tags values(?,?)";
		int count=jt.update(sql,tagid,tagName);

		return (count==1);
	}
	public boolean addTagNames(String tagName) {
		log.debug("ImageDAOImpl.addComment");
		String sql="insert into t_image_tagnames values(?)";
		int count=jt.update(sql,tagName);

		return (count==1);
	}

	@Override
	public List<ImagePojo> viewComments(String commentidf) {
		log.debug("IN ImageDAOImpl.viewComments ");
		
		String sql="select commentidf,comments from t_image_comments where commentidf='"+commentidf+"'";
		
		List<ImagePojo> commentPojoList=  jt.query(sql, cMapper);
		log.debug("URL :"+commentPojoList);
		
		return commentPojoList;
	}
	public List<ImagePojo> viewTagMenu() {
		log.debug("IN ImageDAOImpl.viewComments ");
		
		String sql="select tagname from t_image_tagnames";
		
		List<ImagePojo> tagmenuPojoList=  jt.query(sql, tmMapper);
		log.debug("URL :"+tagmenuPojoList);
		
		return tagmenuPojoList;
	}
	@Override
	public List<ImagePojo> viewTags() {
		log.debug("IN ImageDAOImpl.viewComments ");
		
		String sql="select tagname from t_image_tags";
		
		List<ImagePojo> tagPojoList=  jt.query(sql, tMapper);
		log.debug("URL :"+tagPojoList);
		
		return tagPojoList;
	}
	
	public List<ImagePojo> tagNameSearch(String tagName) {
			log.debug("ImageDAOImpl.tagNameSearch");
			System.out.println(tagName+"...");
			return (List<ImagePojo>)jt.query("select * from t_image_tagnames  where tagname='"+tagName+"'",new ResultSetExtractor<List<ImagePojo>>() {
				@Override
				public List<ImagePojo> extractData(ResultSet rs)
						throws SQLException, DataAccessException {
					List<ImagePojo> list=new ArrayList<ImagePojo>();

					while(rs.next()){	
						ImagePojo u=new ImagePojo();
						u.setTagName(rs.getString(1));
						log.debug("ImageDAOImpl.tagNameSearch :"+rs.getString(1));
						list.add(u);
					}
					return list;
				}
			});
	}

	public List<ImagePojo> imagesByTag(String bytag) {
		log.debug("IN ImageDAOImpl.viewAllImages ");
		String sql="select tagid,tagname from t_image_tags where tagname ='"+bytag+"'";
		List<ImagePojo> imagePojoList=  jt.query(sql, tagidMapper);
		log.debug("URL :"+imagePojoList);
		
		return imagePojoList;
	}		
}
