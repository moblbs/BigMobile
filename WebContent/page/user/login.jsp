<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path=request.getContextPath();
String userName="";
String password="";
Cookie[] cookies=request.getCookies();
if(cookies!=null && cookies.length>0){
    for(int i=0;i<cookies.length;i++){
    	
        if(cookies[i].getName().equals("userCookie")){  
	        userName=cookies[i].getValue().split("-")[0];
	        password=cookies[i].getValue().split("-")[1];
	        break;
        }
    }
}
request.setAttribute("userName", userName);
request.setAttribute("password", password);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>xiao4r</title>
<link href="<%=path%>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=path%>/resources/css/xiao4r.css" rel="stylesheet">
<link href="<%=path%>/resources/css/login/login.css" rel="stylesheet">
<script src="<%=path%>/resources/js/ie-emulation-modes-warning.js"></script>
<script src="<%=path%>/resources/js/ie10-viewport-bug-workaround.js"></script>
<script src="<%=path%>/resources/js/jquery.min.js"></script>
<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
	<h1><p class="text-center">大移动数据平台</p></h1>
	<br/>
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">登录</h3>
			 	</div>
			  	<div class="panel-body">
                    <!--div class="alert alert-error">
                        <a class="close" data-dismiss="alert" href="#">×</a>Incorrect Username or Password!
                    </div-->
                    <c:if test="${message != null}">
			    	  	<div class="form-group">
		                    <span id="warning-block">
			                    <div class="alert alert-warning alert-dismissible" role="alert" id="my-alert">
			                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			                        ${message}
			                    </div>
		                    </span>
	                    </div>
					</c:if>
                    
			    	<form accept-charset="UTF-8" role="form" action="user.do?method=login" method="post">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="用户名" name="userName" type="text" value="${userName }" required>
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="密码" name="password" type="password" value="${password }" required>
			    		</div>
			    		<div class="form-group">
				    		<div class="checkbox">
				    	    	<label title="默认一个星期有效">
				    	    		<input name="remember" type="checkbox" value="Y" >记住账号
				    	    	</label>
			    	    </div>
			    		</div>
                        <div class="form-group">
			    		    <input class="btn btn-lg btn-success btn-block" type="submit" value="登录">
                        </div>
                        <%-- <div class="form-group">
                            <div class="controls" style="float:left">
                                <a href="user.do?method=toRegisterPage">注册账号</a>
                            </div>
                            <div class="controls" style="float:right">
                               <button class="login-right btn-link" type="button"
                                onclick="location.href='<%=path%>/user.do?method=toForgetPassword'">忘记密码</button>
                            </div>
                        </div> --%>
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

</body>
</html>