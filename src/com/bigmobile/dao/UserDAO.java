package com.bigmobile.dao;

import java.util.List;

import com.bigmobile.model.User;

public interface UserDAO {

	/**
	 * 添加用户
	 */
	public void insertUser(User user);
	
	/**
	 * 查询用户
	 */
	public List<User> getUsers();
	
	/**
	 * 删除用户
	 */
	public void deleteUser(String userID);
	
	/**
	 * 通过账号和密码查询一个用户
	 */
	public User getOneUser(User user);
	
	/**
	 * 通过id查询一个用户
	 */
	public User getOneUserByID(String userID);
	
	/**
	 * 通过用户名查询一个用户
	 */
	public User getOneUserByName(String userName);
	
	/**
	 * 修改密码
	 */
	public void updateUserPassword(User user);

	/** 
	* @Description: TODO(找回密码) 
	* @author 谭志伟
	* @date 2015年3月6日 下午4:40:12 
	*/ 
	public User forgetPassword(User user);
}