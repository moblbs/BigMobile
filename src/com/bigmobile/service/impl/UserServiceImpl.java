package com.bigmobile.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bigmobile.dao.UserDAO;
import com.bigmobile.model.User;
import com.bigmobile.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource(name = "userDao") 
	private UserDAO userDao;

	public List<User> queryUsers() {
		return userDao.getUsers();
	}

	public void addUser(User user) {
		userDao.insertUser(user);
	}

	public void deleteUser(String id) {
		userDao.deleteUser(id);
	}

	public User getOneUser(User user) {
		return userDao.getOneUser(user);
	}

	public void updateUserPassword(User user) {
		// TODO Auto-generated method stub
		userDao.updateUserPassword(user);
	}

	public User getOneUserByID(String userID) {
		// TODO Auto-generated method stub
		return userDao.getOneUserByID(userID);
	}

	public User getOneUserByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.getOneUserByName(userName);
	}

	@Override
	public User forgetPassword(User user) {
		// TODO Auto-generated method stub
		return userDao.forgetPassword(user);
	}

	
	
}
