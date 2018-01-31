package gosuic.dao.user;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import gosuic.entity.AptInfo;
import gosuic.vo.UserVo;

@Repository 
public class UserDao {
	
	@Autowired 
	JdbcTemplate jdbcTemplate;
	private SqlSession sql;
	//private SqlSessionFactory factory;
	
	/*public SqlSession driver() {
		SqlSession session = factory.openSession();
		return session;
	}*/
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public List<AptInfo> listUser(){
		List<AptInfo> list = getJdbcTemplate().query("SELECT * FROM aptinfo", new RowMapper<AptInfo>() {
			@Override
			public AptInfo mapRow(ResultSet rs, int num) throws SQLException {
					AptInfo ob = new AptInfo();
					ob.setAptno(rs.getInt("aptno"));
					ob.setSigungu(rs.getString("sigungu"));
					ob.setBunji(rs.getString("bunji"));
					ob.setDanji(rs.getString("danji"));
					ob.setC_type(rs.getInt("c_type"));
					ob.setMyunjuk(rs.getString("myunjuk"));
					ob.setBojeung(rs.getString("bojeung"));
					ob.setWolse(rs.getString("wolse"));
					ob.setGunchook(rs.getString("gunchook"));
					
					return ob;
			}
		});
		return list;
	}
	
	public boolean insertUser(UserVo user) {
		int n = getJdbcTemplate().update("insert into userinfo values(?,?,?,?,?,?)" ,
				new Object[] {user.getUserEmail(),user.getUserID(),user.getPassword1(),user.getUserName(),user.getUserBirthday(),user.getUserGender()});
		return (n>0) ? true : false;
	}

	/*public boolean idcheck(String userEmail) {
		System.out.println("아이디체크 Dao userEmail : "+ userEmail);
		String str =getJdbcTemplate().queryForObject("select useremail from userinfo where useremail=?", new Object[] {userEmail},String.class);
		System.out.println(str);
		if(str!=null && str !="") {
			return false;
		}else
		return true;
	}*/
	
	public boolean login(String userEmail, String password1) {
		System.out.println("록인dao들어옴");
		System.out.println("다오의 " + userEmail);
		
		String str= getJdbcTemplate().queryForObject("select useremail from userinfo where useremail=? and userpassword=?",
				new Object[] {userEmail,password1}, String.class);
		System.out.println("str을 찍어보자" +str);
		if(str !=null && str != "") { 
				return true;	
		}else
			return false;

	}

	}

