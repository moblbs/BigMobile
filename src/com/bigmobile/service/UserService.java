package com.bigmobile.service;

import java.util.List;

import com.bigmobile.model.User;

public interface UserService {
	
	/**
	 * 添加用户
	 */
	public void addUser(User user);

	/**
	 * 查询用户
	 * @return
	 */
	public List<User> queryUsers();
	
	/**
	 * 删除用户
	 * @return
	 */
	public void deleteUser(String id);
	
	/**
	 * 通过账号和密码查询一个用户
	 * @param user
	 * @return
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
	* @date 2015年3月6日 下午4:39:31 
	*/ 
	public User forgetPassword(User user);
}
