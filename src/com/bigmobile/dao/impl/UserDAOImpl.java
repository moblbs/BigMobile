package com.bigmobile.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.bigmobile.dao.UserDAO;
import com.bigmobile.model.User;

@Repository("userDao")
public class UserDAOImpl  implements UserDAO {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	/**
	 * 删除用户
	 */
	public void deleteUser(String userID) {
		sqlMapClient.delete("user.deleteUser",userID);
	}

	/**
	 * 添加用户
	 */
	public void insertUser(User user) {
		sqlMapClient.insert("user.insertUser", user);
	}

	/**
	 * 查询用户
	 */
	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return (List<User>)sqlMapClient.queryForList("user.getUsers");
	}

	/**
	 * 查询一个用户
	 */
	public User getOneUser(User user) {
		return (User) sqlMapClient.queryForObject("user.getOneUser", user);
	}

	public void updateUserPassword(User user) {
		// TODO Auto-generated method stub
		sqlMapClient.update("user.updateUserPassword", user);
	}

	public User getOneUserByID(String userID) {
		// TODO Auto-generated method stub
		return (User) sqlMapClient.queryForObject("user.getOneUserByID", userID);
	}

	public User getOneUserByName(String userName) {
		// TODO Auto-generated method stub
		return (User) sqlMapClient.queryForObject("user.getOneUserByName", userName);
	}

	@Override
	public User forgetPassword(User user) {
		return (User) sqlMapClient.queryForObject("user.forgetPassword", user);
	}
}