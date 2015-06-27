package com.bigmobile.filter;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigmobile.model.User;

public class URLFilter implements Filter {
	private static final HashMap<String,String> filterMap = new HashMap<String,String>();
	
	//不用登入访问链接看这里-_-
	public URLFilter()
	{
		filterMap.put("/", "登录");
		filterMap.put("/user.do?method=toLoginPage", "登录前往");
		filterMap.put("/user.do?method=login", "登录");
		filterMap.put("/user.do?method=toRegisterPage", "注册前往");
		filterMap.put("/user.do?method=addUser", "注册提交");
		filterMap.put("/user.do?method=toForgetPassword", "前往忘记密码");
		filterMap.put("/user.do?method=forgetPassword", "重置密码");
		filterMap.put("/fileUpload.do?method=imgUpload", "上传图片");
		
	}

	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;  
        HttpServletResponse httpServletResponse = (HttpServletResponse)response;
        
        User user=(User)httpServletRequest.getSession().getAttribute("user");
        String methodName=request.getParameter("method");
        String url=httpServletRequest.getRequestURI();
        String actionName =url.substring(url.lastIndexOf("/"),url.length());
        url = actionName+"?method="+methodName;
        
        System.out.println("url="+url);
        //已登入或者是包含在公共访问目录
        if(null!=user || filterMap.containsKey(url)){
        	filterChain.doFilter(request, response);  
        }else{
        	//未登入跳转到登入页面
        	request.getRequestDispatcher("/user.do?method=toLoginPage").forward(httpServletRequest,httpServletResponse);
        }
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {}
	
	  

}
