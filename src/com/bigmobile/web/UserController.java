package com.bigmobile.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bigmobile.model.User;
import com.bigmobile.service.UserService;
import com.bigmobile.util.MD5;

@Controller
@RequestMapping("/user.do")
public class UserController {
	protected static Logger logger = Logger.getLogger(UserController.class);// 日志
	@Autowired
	public UserService userService;
		 
	/** 
	* @Description: TODO(跳转到登录界面login.jsp) 
	* @author 谭志伟
	* @date 2015年3月6日 下午1:59:47 
	*/ 
	@RequestMapping(params="method=toLoginPage")
	public String toLoginPage(HttpServletRequest request,HttpServletResponse response){
		User user=(User)request.getSession().getAttribute("user");
		if(null!=user){ 
			return "main";
		}else{
	        return "user/login";
		}
	}
	
	
	
	/** 
	* @Description: TODO(注销) 
	* @author 谭志伟
	* @date 2015年3月6日 上午10:54:57 
	*/ 
	@RequestMapping(params="method=logout")
	public String logout(HttpServletRequest request){
       request.getSession().removeAttribute("user");
       request.getSession().removeAttribute("imgLocation");
	   return "user/login";
	}

	
	
	/** 
	* @Description: TODO(跳转到登录界面login.jsp) 
	* @author 谭志伟
	* @date 2015年3月6日 下午1:59:47 
	*/ 
	@RequestMapping(params="method=toForgetPassword")
	public String toForgetPassword(HttpServletRequest request){
		return "user/forgetPassword";
	}
	
	
	/** 
	* @Description: TODO(重置密码发送选信息) 
	* @author 谭志伟
	* @date 2015年3月6日 下午2:23:18 
	*/ 
	@RequestMapping(params="method=forgetPassword")
	public void forgetPassword(HttpServletRequest request,HttpServletResponse response,
			String userName,String mobile){
		PrintWriter out=null;
		try {
		    response.setContentType("text/html;charset=utf-8");
			out=response.getWriter();
			
			if(StringUtils.isNotEmpty(userName) && StringUtils.isNotEmpty(mobile)){
				User user=new User();
				user.setUserName(userName);
//				user.setMobile(mobile);
				User doUser=(User)userService.forgetPassword(user);
				
				if(null!=doUser){
					//重置密码
					String password =  new Random().nextInt(999999)+"";
					doUser.setPassword(MD5.encrypt(password));
					System.out.println("password="+password);
					userService.updateUserPassword(doUser);
					//发送短息到用户绑定手机上面
//					String content = "尊敬的小事儿商户["+userName+"]您好，您正在重置密码，新的密码是:"
//					+password+",如有疑问，请致电 0951-3816912咨询。【小事儿】";
//					SendMessage.sendSMS(new String[]{mobile}, content);
					
					out.print("重置密码成功，新密码已发送至你手机号码上，请查收-_-");
				}else{
					out.print("输入用户名或手机号码信息不匹配！");
				}
			}else{
				out.print("登入用户名或手机号码不能为空！");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(out!=null) out.close();
		}
	}
	
	
	
	/** 
	* @Description: TODO(登录并跳转到主界面main.jsp) 
	* @date 2015年3月6日 上午10:54:26 
	*/ 
	@RequestMapping(params="method=login")
	public String login(HttpServletRequest request,HttpServletResponse response){
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		
		User user = new User(userName,MD5.encrypt(password));
		User dbUser = userService.getOneUser(user);
		if(dbUser!=null){
			//记住密码 保存Cookie 中
			if("Y".equals(remember)){
				Cookie cookie = new Cookie("userCookie",userName+"-"+password);
				cookie.setMaxAge(60*60*24*7);//七天
		        response.addCookie(cookie);
			}
			request.getSession().setAttribute("user", dbUser);
			return "main";
		}else{
			request.setAttribute("message", "账号或密码有误，请重新登录");
			return "user/login";
		}
	}
	 
	/** 
	* @Description: TODO(跳转到注册界面register.jsp) 
	* @date 2015年3月7日 下午3:26:20 
	*/ 
	@RequestMapping(params="method=toRegisterPage",  method = RequestMethod.GET)
	public String toRegisterPage(HttpServletRequest request){
	
		System.out.println("【跳转到register.jsp页面】");
		return "user/register";
	}
	
	
	/** 
	* @Description: TODO(注册新商户) 
	* @date 2015年3月6日 上午10:53:24 
	*/ 
	@RequestMapping(params="method=addUser" ,method = RequestMethod.POST)
	public String addUser(HttpServletRequest request){
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");	
		password=MD5.encrypt(password);//密码加密
		
		
		User existUser = userService.getOneUserByName(userName);
		if(existUser != null) {
			request.setAttribute("message", "您输入的用户名已经存在");
			return "alert";
		}
		
		User user = new User(userName, password);
		userService.addUser(user);
		//清除当前session中保存的图片路劲
	    request.getSession().removeAttribute("imgLocation");
		request.setAttribute("message","【注册商户成功】");
		return "user/prompt";
	}
	 
	
	
	
	
	/** 
	* @Description: TODO(跳转到密码修改界面) 
	* @date 2015年3月7日 下午3:26:35 
	*/ 
	@RequestMapping(params="method=toChangePasswordPage",  method = RequestMethod.GET)
	public String toChangePasswordPage(HttpServletRequest request){
		System.out.println("【跳转到changePassword.jsp页面】");
		return "user/changePassword";
	}
	
	/** 
	* @Description: TODO(修改用户密码) 
	* @date 2015年3月7日 下午3:26:53 
	*/ 
	@RequestMapping(params="method=changePassword")
	public String changePassword(HttpServletRequest request,Model model){
		User doUser = (User) request.getSession().getAttribute("user");
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		if(!MD5.encrypt(oldPassword).equals(doUser.getPassword())){
			request.setAttribute("message", "您输入的旧密码不正确，请重新输入。");
			return "user/changePassword";
		}else{
			//修改后重新登入
		    request.getSession().removeAttribute("user");
			User user = new User();
			user.setUserId(doUser.getUserId());
			user.setPassword(MD5.encrypt(newPassword));
			userService.updateUserPassword(user);
			request.setAttribute("message", "【用户密码修改成功】");
			return "user/prompt";
		}
		
	}
	 
	/** 
	* @Description: TODO(跳转到信息修改界面updateProfile.jsp) 
	* @date 2015年3月7日 下午3:27:11 
	*/ 
	@RequestMapping(params="method=toUpdateProfilePage",  method = RequestMethod.GET)
	public String toUpdateProfilePage(HttpServletRequest request, Model model){
		User doUser = (User) request.getSession().getAttribute("user");
		User user = userService.getOneUserByID(doUser.getUserId());
		model.addAttribute("user", user);
		System.out.println("【跳转到updateProfile.jsp页面】");
		return "user/updateProfile";
	}
			
	/** 
	* @Description: TODO(单击查看所有人信息) 
	* @date 2015年3月7日 下午3:27:33 
	*/ 
	@RequestMapping(params="method=toShowAllPage")
	public String toShowAllPage(HttpServletRequest request,Model model){
		System.out.println("【查看所有人信息，跳转到list.jsp】");
		List<User> list = userService.queryUsers();
		model.addAttribute("userList", list);
		return "user/list";
	}
			
	
	
	
	
	//删除用户
	@RequestMapping(params="method=deleteUser",method=RequestMethod.GET)
	public String deleteUser(@RequestParam("userid") String userid,Model model){
		System.out.println("....");
		System.out.println("删除的id是===="+userid+"---------");
		userService.deleteUser(userid);
		List<User> list = userService.queryUsers();
		model.addAttribute("userList", list);
		return "user/list";
	}
	
}
