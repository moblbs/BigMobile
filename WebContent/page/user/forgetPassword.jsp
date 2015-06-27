<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path=request.getContextPath();
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>xiao4r</title>
    <link href="<%=path%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/xiao4r.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/register/register.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=path%>/resources/js/ie-emulation-modes-warning.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=path%>/resources/js/ie10-viewport-bug-workaround.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="<%=path%>/resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/fileinput.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrapValidator.min.js"></script>
    
</head>

<body>
    <div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
  						<div class="panel-heading" >
                      		    忘记密码
                        </div>
                      		
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#home-pills" data-toggle="tab">手机/邮箱找回密码</a>
                                </li>
                                <li><a href="#messages-pills" data-toggle="tab">人工客服找回密码</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                            
                                <div class="tab-pane fade in active" id="home-pills">
                                	<div class="form-group">                               
		                                <h4>登入账户名称</h4>
		                                <div class="controls">
		                                    <input type="text" id="userName" name="userName" maxlength="18"
		                                   	 onkeyup="value=value.replace(/[^\a-zA-Z0-9]/ig,'')"
		                                   	 onfocus="$('.text-left').html('')"
		                                     placeholder="输入登入账户名称" class="form-control">
		                                </div>
		                             </div>
                                	
                               		 <div class="form-group">                               
		                                <h4>输入绑定手机号</h4>
		                                <div class="controls">
		                                    <input type="text" id="mobile" name="mobile" maxlength="11"
		                                     onkeyup="this.value=this.value.replace(/\D/g,'')" 
		                                     onfocus="$('.text-left').html('')"
		                                     placeholder="输入绑定的手机号码 " class="form-control">
		                                </div>
		                             </div>
		                              <div class="form-group">     
				                            <h4>备注：</h4>
		                                    <div class="controls">
		                                    <p>
										           输入后将验证用户名和手机号码的正确性，输入正确，将会发送重置密码短信到你绑定的手机号码上面。
		                                    </p>
		                                    </div>
		                              </div>
		                             
		                              <p class="text-left" style="color:red;"></p>
				                         <div class="form-group">                           
												<div class="col-md-6 inline-left">
					                                <button class="btn btn-outline btn-primary btn-lg btn-block" onclick="resetPswd()" type="button">
												 	   找回密码
													</button>
												</div>			
												<div class="col-md-6 inline-right">
					                                <button onclick="location.href='<%=path%>/user.do?method=toLoginPage'"
					                                class="btn btn-outline btn-default btn-lg btn-block" type="button">
													  返回登入
													</button>
												</div>
				                        </div>
                                </div>
                                
                                
                                <div class="tab-pane fade" id="messages-pills">
                                    <h4>请仔细阅读</h4>
                                    <div class="controls">
                                    <p>
								              如果您的登录名未绑定手机和邮箱，将无法通过以上方式找回。<br/>
								              您可以致电客服进行人工服务。
									     固话 0951-3816912 。
                                    </p>
                                    </div>
                                </div>
                            </div>
                    </div>
			 </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">信息提示</h4>
      </div>
      <div class="modal-body">
      <div class="form-group"  id="resetMessage">
      </div>
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="location.href='<%=path%>/user.do?method=toLoginPage'">前往登入</button>
      </div>
    </div>
  </div>
</div>


<!-- jQuery -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/sbadmin/metisMenu.min.js"></script>
<script type="text/javascript" src="resources/js/sbadmin/sb-admin-2.js"></script>
<script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="resources/js/common.js"></script>

</body>

<script type="text/javascript">
function resetPswd(){
  var mobile=$("#mobile").val();
  var userName=$("#userName").val();
  if(isNull(userName) || !checkMobile(mobile)){
	  $(".text-left").html("&nbsp;请输入正确的用户名称和绑定手机号码！");
	  return ;
  }else{
	  $.ajax({
		    type: "POST",
		    url: "<%=path%>/user.do?method=forgetPassword",
		    data:{"userName":userName,"mobile":mobile},
		    success: function(data)
		    {
		    	$(".text-left").html("");
		    	$("#resetMessage").html(data);
		    	$('#myModal').modal('show')
		    }
		});
  }
}
</script>
</html>
