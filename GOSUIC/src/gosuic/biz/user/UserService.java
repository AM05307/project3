package gosuic.biz.user;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gosuic.dao.user.UserDao;
import gosuic.entity.AptInfo;
import gosuic.vo.UserVo;

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

	public boolean login(String userEmail, String password1) {
		return userDao.login(userEmail, password1);
	}

	public int checkID(String userEmail) {
		return userDao.checkId(userEmail);
	}

}
