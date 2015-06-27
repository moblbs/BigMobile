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

    <!-- Bootstrap Core CSS -->
    <link href="<%=path%>/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=path%>/resources/css/sbadmin/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<%=path%>/resources/css/sbadmin/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=path%>/resources/css/sbadmin/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<%=path%>/resources/css/sbadmin/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=path%>/resources/css/sbadmin/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="<%=path%>/resources/css/bootstrapValidator.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!--     <script type="text/javascript" src="<%=path%>/resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrapValidator.min.js"></script> -->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">			
			<%@ include file="../headBar.jsp"%>
			<%@ include file="../leftSideBar.jsp"%>
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">修改密码</h1>
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            修改密码
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">                            
				                    <c:if test="${message != null}">
					                    <span id="warning-block">
						                    <div class="alert alert-warning alert-dismissible" role="alert" id="my-alert">
						                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						                        ${message}
						                    </div>
					                    </span>
									</c:if>
                                    <form id="changePasswordForm" action='user.do?method=changePassword' method="POST">            	
                        				<fieldset>
				                            <div class="form-group">
				                                <!-- Password-->
				                                <label class="control-label" for="oldPassword">旧密码</label>
				                                <div class="controls">
				                                    <input type="password" id="oldPassword" name="oldPassword" placeholder="" class="form-control">
				                                    <!--p class="help-block">Password should be at least 4 characters</p-->
				                                </div>
				                            </div>
				                            <div class="form-group">
				                                <!-- Password-->
				                                <label class="control-label" for="newPassword">新密码</label>
				                                <div class="controls">
				                                    <input type="password" id="newPassword" name="newPassword" placeholder="" class="form-control">
				                                    <!--p class="help-block">Password should be at least 4 characters</p-->
				                                </div>
				                            </div>
				
				                            <div class="form-group">
				                                <!-- Password -->
				                                <label class="control-label"  for="confirmNewPassword">确认新密码</label>
				                                <div class="controls">
				                                    <input type="password" id="confirmNewPassword" name="confirmNewPassword" placeholder="" class="form-control">
				                                    <!--p class="help-block">Please confirm password</p-->
				                                </div>
				                            </div>                  	
                                       	    <button type="submit" class="btn btn-lg btn-success col-md-2 col-md-offset-5">修改</button>
                        				</fieldset>   
                                    </form>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script type="text/javascript" src="<%=path%>/resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script type="text/javascript" src="<%=path%>/resources/js/sbadmin/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script type="text/javascript" src="<%=path%>/resources/js/sbadmin/sb-admin-2.js"></script>
    
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrapValidator.min.js"></script>

<script type="text/javascript">    
    $(document).ready(function() {
        
        $('#changePasswordForm').bootstrapValidator({
//            live: 'disabled',
            message: '该值不合法',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	oldPassword: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                },
            	newPassword: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {
                            field: 'confirmNewPassword',
                            message: '两次密码输入不一致'
                        },
                        different: {
                            field: 'oldPassword',
                            message: '新密码必须和旧密码不一致'
                        }
                    }
                },
                confirmNewPassword: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        identical: {
                            field: 'newPassword',
                            message: '两次密码输入不一致'
                        },
                        different: {
                            field: 'oldPassword',
                            message: '新密码必须和旧密码不一致'
                        }
                    }
                }
            }
        });
    });
</script>
</body>

</html>
