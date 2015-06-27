<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path=request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <div class="panel-heading">
                    <h3 class="panel-title">注册</h3>
                </div>
                <div class="panel-body">
                    <form id="registerForm" class="form-horizontal" action='user.do?method=addUser' method="POST" enctype ="multipart/form-data">
                        <fieldset>
                         <div class="form-group">                           
							<div class="col-md-2 inline-left">
	                          <label>商户类型</label>
								</div>			
								<div class="col-md-10 inline-right">
	                                 <label>
	                                    <input type="radio" name="businessType" checked="checked" value="1">普通商户
	                                </label>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <label>
	                                    <input type="radio" name="businessType" value="2">小区物业
	                                </label>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <label>
	                                    <input type="radio" name="businessType" value="3">停车相关
	                                </label>
								</div>
                           </div>
                        
                            <div class="form-group">                           
								<div class="col-md-6 inline-left">
	                                <label class="control-label"  for="userName">用户名</label>
	                                <div class="controls">
	                                    <input type="text" id="userName" name="userName" placeholder="" class="form-control">
	                                    <!--p class="help-block">Username can contain any letters or numbers, without spaces</p-->
	                                </div>
								</div>			
								<div class="col-md-6 inline-right">
	                                <label class="control-label"  for="inviteCode">邀请码</label>
	                                <div class="controls">
	                                    <input type="text" id="inviteCode" name="inviteCode" placeholder="" class="form-control">
	                                </div>
								</div>
                            </div>

							<div class="form-group">
								<div class="col-md-6 inline-left">
	                                <label class="control-label" for="password">密码</label>
	                                <div class="controls">
	                                    <input type="password" id="password" name="password" placeholder="" class="form-control">
	                                    <!--p class="help-block">Password should be at least 4 characters</p-->
	                                </div>
	                            </div>
	
								<div class="col-md-6 inline-right">
	                                <label class="control-label"  for="confirmPassword">确认密码</label>
	                                <div class="controls">
	                                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please confirm password</p-->
	                                </div>
	                            </div>
                            </div>
							
                            <div class="form-group">
								<div class="col-md-6 inline-left">                            
	                                <label class="control-label" for="shopName">商户名称</label>
	                                <div class="controls">
	                                    <input type="text" id="shopName" name="shopName" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>

	                            <div class="col-md-6 inline-right">
	                                <label class="control-label" for="charterNo">营业执照注册号</label>
	                                <div class="controls">
	                                    <input type="text" id="charterNo" name="charterNo" placeholder="" maxlength="15" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="form-group">
                            	<label>营业执照扫描件</label>
                                <input id="file" name="file" class="file" type="file">
                            </div>

                            <div class="form-group">                               
                                <label class="control-label" for="shopAddress">商户地址</label>
                                <div class="controls">
                                    <input type="text" id="shopAddress" name="shopAddress" placeholder="" class="form-control">
                                    <!--p class="help-block">Please provide your E-mail</p-->
                                </div>
                            </div>

                            <div class="form-group"> 
	                            <div class="col-md-6 inline-left">                              
	                                <label class="control-label" for="operator">运营者姓名</label>
	                                <div class="controls">
	                                    <input type="text" id="operator" name="operator" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>
	
	                            <div class="col-md-6 inline-right">                              
	                                <label class="control-label" for="IDNumber">运营者身份证号</label>
	                                <div class="controls">
	                                    <input type="text" id="IDNumber" name="IDNumber" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>
                            </div>

                            <div class="form-group">
	                            <div class="col-md-6 inline-left">   
	                                <label class="control-label" for="mobile">运营者手机号码</label>
	                                <div class="controls">
	                                    <input type="text" id="mobile" name="mobile" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>
	
	                            <div class="col-md-6 inline-right">
	                                <label class="control-label" for="email">E-mail</label>
	                                <div class="controls">
	                                    <input type="text" id="email" name="email" placeholder="" class="form-control">
	                                    <!--p class="help-block">Please provide your E-mail</p-->
	                                </div>
	                            </div>
                            </div>
                            
                            <div class="form-group">
                            	<label>商业条款</label>
                                <!-- <textarea class="form-control" rows="3"> -->
                                	<ol>
								        <li>商户注册信息应真实有效，如有虚假，小事儿保留追诉相关权益；</li>
								        <li>商户发布资源须真实可用，一旦有线下店面拒绝相关资源的情况发生，小事儿可起诉；</li>
								        <li>资源发布后需经小事儿业务人员确认，未经确认的资源不产生作用；</li>
								        <li>商户可线上查看相关资源的使用情况，但仅供参考，实际数据以双方确认的线下交易为准；</li>
								        <li>所有资源的最终解释权归小事儿所有。</li>
								    </ol>
                                <!-- </textarea> -->
                            </div>

							<div class="form-group">
	                            <div class="checkbox">
	                                <label>
	                                    <input type="checkbox" name="readTerms" value="Remember Me"> 我已阅读并同意相关<!--a onclick="showterms()"-->商业条款</a>。
	                                </label>
	                            </div>
                            </div>

                            <br>

                            <div class="form-group">
                                <!-- Button -->
                                <div class="controls">
                                    <button class="btn btn-lg btn-success btn-block" type="submit">注册</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- <div class="col-md-4" id="commercialTerms" style="display:none;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">商业条款</h3>
                </div>
                <div class="panel-body terms">
                	<ol>
			            <li>商户注册信息应真实有效，如有虚假，小事儿保留追诉相关权益；</li>
			            <li>商户发布资源须真实可用，一旦有线下店面拒绝相关资源的情况发生，小事儿可起诉；</li>
			            <li>资源发布后需经小事儿业务人员确认，未经确认的资源不产生作用；</li>
			            <li>商户可线上查看相关资源的使用情况，但仅供参考，实际数据以双方确认的线下交易为准；</li>
			            <li>所有资源的最终解释权归小事儿所有。</li>
			        </ol>
                </div>
            </div>
        </div> -->
    </div>

</div>


<script type="text/javascript">
    function showterms(){
    	 $("#commercialTerms").show();
    };
    
    $(document).ready(function() {
        
        $('#registerForm').bootstrapValidator({
//            live: 'disabled',
            message: '该值不合法',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                userName: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '用户名长度在6-30之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '用户名只能包含字母、数字、点号和下划线'
                        },
                        different: {
                            field: 'password',
                            message: '用户名必须和密码不相同'
                        }
                    }
                },
                inviteCode: {
                    validators: {
                        notEmpty: {
                            message: '邀请码不能为空'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9]+$/,
                            message: '邀请码只能包含字母和数字，区分大小写'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {
                            field: 'confirmPassword',
                            message: '两次密码输入不一致'
                        },
                        different: {
                            field: 'userName',
                            message: '密码必须和用户名不相同'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        },
                        identical: {
                            field: 'password',
                            message: '两次密码输入不一致'
                        },
                        different: {
                            field: 'userName',
                            message: '密码必须和用户名不一致'
                        }
                    }
                },
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
                },
                readTerms: {
                    validators: {
                        notEmpty: {
                            message: '请确认阅读了相关商业条款'
                        }
                    }
                }
            }
        });

        
        // Validate the form manually
        /*
        $('#validateBtn').click(function() {
            $('#defaultForm').bootstrapValidator('validate');
        });

        $('#resetBtn').click(function() {
            $('#defaultForm').data('bootstrapValidator').resetForm(true);
        });*/
    });
</script>
<script>
    $("#file").fileinput({
        uploadUrl: 'fileUpload.do?method=imgUpload&path=BusinessLicense',
        allowedFileExtensions : ['jpg', 'jpeg', 'png', 'bmp', 'gif']
    });
</script>
</body>
</html>