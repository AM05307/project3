package gosuic.dao.user;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
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
		
	//ȸ������
	public boolean insertUser(UserVo user) {
		int n = getJdbcTemplate().update("insert into userinfo values(?,?,?,?,?,?)" ,
				new Object[] {user.getUserEmail(),user.getUserID(),user.getPassword1(),user.getUserName(),user.getUserBirthday(),user.getUserGender()});
		return (n>0) ? true : false;
	}
	
	//�α���
	public boolean login(String userEmail, String password1) {
		System.out.println("����dao����");
		System.out.println("�ٿ��� " + userEmail);
		
		String str= getJdbcTemplate().queryForObject("select useremail from userinfo where useremail=? and userpassword=?",
				new Object[] {userEmail,password1}, String.class);
		System.out.println("str�� ����" +str);
		if(str !=null && str != "") { 
				return true;	
		}else
			return false;

	}
	// ���̵��ߺ� üũ
	public int checkId(String userEmail) {
		try {
		System.out.println("���̵� �ߺ�üũ �ٿ� : " + userEmail );
		String check = getJdbcTemplate().queryForObject("select userID from userinfo where useremail=?", new Object[] {userEmail},String.class);
		System.out.println( "======== "+check);
		
		}catch(EmptyResultDataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
		
	}

	}

