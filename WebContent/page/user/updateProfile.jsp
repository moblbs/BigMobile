<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>xiao4r</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="resources/css/sbadmin/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="resources/css/sbadmin/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sbadmin/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/css/sbadmin/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/css/sbadmin/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="resources/css/bootstrapValidator.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!--     <script type="text/javascript" src="resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script> -->

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
                    <h1 class="page-header">信息维护</h1>
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            账号详情
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <form id="updateProfileForm" action='user.do?method=updateProfile' method="POST">            	
                        				<fieldset>
	                        				<div class="form-group">
				                                
				                                <label class="control-label" for="shopName">商户名称</label>
				                                <div class="controls">
				                                    <input type="text" id="shopName" name="shopName" value=${user.shopName} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>

				                            <div class="form-group">
				                                
				                                <label class="control-label" for="charterNo">营业执照注册号</label>
				                                <div class="controls">
				                                    <input type="text" id="charterNo" name="charterNo" value=${user.charterNo} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>
				
				                            <div class="form-group">
				                                
				                                <label class="control-label" for="shopAddress">商户地址</label>
				                                <div class="controls">
				                                    <input type="text" id="shopAddress" name="shopAddress" value=${user.shopAddress} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>
				
				                            <div class="form-group">

				                            <div class="form-group">
				                                
				                                <label class="control-label" for="operator">运营者姓名</label>
				                                <div class="controls">
				                                    <input type="text" id="operator" name="operator" value=${user.operator} placeholder="李" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>
				
				                            <div class="form-group">
				                                
				                                <label class="control-label" for="IDNumber">运营者身份证号</label>
				                                <div class="controls">
				                                    <input type="text" id="IDNumber" name="IDNumber" value=${user.IDNumber} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>
				                                
				                                <label class="control-label" for="mobile">运营者手机号码</label>
				                                <div class="controls">
				                                    <input type="text" id="mobile" name="mobile" value=${user.mobile} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>
				
				                            <div class="form-group">
				                                <!-- E-mail -->
				                                <label class="control-label" for="email">E-mail</label>
				                                <div class="controls">
				                                    <input type="text" id="email" name="email" value=${user.email} placeholder="" class="form-control">
				                                    <!--p class="help-block">Please provide your E-mail</p-->
				                                </div>
				                            </div>                                	
                                       	    <button type="submit" class="btn btn-lg btn-success col-md-2 col-md-offset-5">更新</button>
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
    <script type="text/javascript" src="resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script type="text/javascript" src="resources/js/sbadmin/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script type="text/javascript" src="resources/js/sbadmin/sb-admin-2.js"></script>
    
    <script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>

<script type="text/javascript">    
$(document).ready(function() {
    
    $('#updateProfileForm').bootstrapValidator({
//        live: 'disabled',
        message: '该值不合法',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            shopName: {
                validators: {
                    notEmpty: {
                        message: '商户名称不能为空'
                    }
                }
            },
            charterNo: {
                validators: {
                    notEmpty: {
                        message: '营业执照注册号不能为空'
                    },
                    regexp: {
                        regexp: /^\d{15}$/,
                        message: '请输入15位营业执照注册号'
                    }
                }
            },
            shopAddress: {
                validators: {
                    notEmpty: {
                        message: '商户地址不能为空'
                    }
                }
            },
            operator: {
                validators: {
                    notEmpty: {
                        message: '运营者姓名不能为空'
                    }
                }
            },
            IDNumber: {
                validators: {
                    notEmpty: {
                        message: '运营者身份证号码不能为空'
                    },
                    regexp: {
                        regexp: /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
                        message: '身份证号码格式不正确，请输入15位或18位正确身份证号码'
                    }
                }
            },
            mobile: {
                validators: {
                    notEmpty: {
                        message: '手机号码不为能空'
                    },
                    regexp: {
                        regexp: /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/,
                        message: '手机号码格式不正确'
                    }
                }
            },
            email: {
                validators: {
                    emailAddress: {
                        message: 'email格式不正确'
                    }
                }
            }
        }
    });
});
</script>
</body>

</html>
