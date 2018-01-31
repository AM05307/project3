package gosuic.biz.user;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gosuic.dao.user.UserDao;
import gosuic.entity.AptInfo;
import gosuic.vo.UserVo;

//biz는 dao를 호출한다.
@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public List<AptInfo> listUser(){
		return userDao.listUser();
	}

	public  boolean insertUser(UserVo user) {
		return userDao.insertUser(user);
	}

	/*public boolean idcheck(String userEmail) {
		return userDao.idcheck(userEmail);
	}*/

	public boolean login(String userEmail, String password1) {
		return userDao.login(userEmail, password1);
	}

}
