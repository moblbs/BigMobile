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

    <title>bigMobile</title>

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

    <!-- DataTables CSS -->
    <link href="<%=path%>/resources/css/sbadmin/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href=".<%=path%>/resources/css/sbadmin/dataTables.responsive.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">		
			<%@ include file="../headBar.jsp"%>
			<%@ include file="../leftSideBar.jsp"%>
        </nav>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">简历用户</h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            用户列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="resumeUserTables">
                                    <thead>
                                        <tr>
                                            <th>手机号码</th>
                                            <th>姓名</th>
                                            <th>性别</th>
                                            <th>地址</th>
                                            <th>出生年月</th>
                                            <th>民族</th>                  
                                            <th>婚姻状况</th>
                                            <th>所在城市</th>
                                            <th>工作年限</th>
                                            <th>户口城市</th>
                                            <th>目前年薪</th>
                                            <th>邮编</th>
                                            <th>邮箱</th>
                                            <th>学历</th>
                                            <th>毕业学校</th>
                                            <th>家庭联系人</th>
                                            <th>公司联系人</th>
                                            <th>个人网站</th>
                                            <th>基本工资</th>
                                            <th>津贴</th>
                                            <th>奖金</th>
                                            <th>股票</th>
                                            <th>兴趣爱好</th>
                                            <th>目标行业</th>
                                            <th>目标职能</th>
                                            <th>部门</th>
                                            <th>职位</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${resumeUserList}" var="resumeUser">
										   	<tr>
											   	<td>${resumeUser.mobile}</td>
												<td>${resumeUser.username}</td>
												<td>${resumeUser.sex}</td>
												<td>${resumeUser.address}</td>
												<td>${resumeUser.birthyear}</td>
												<td>${resumeUser.nation}</td>
												<td>${resumeUser.marriage}</td>
												<td>${resumeUser.resident_city}</td>
												<td>${resumeUser.work_year}</td>
												<td>${resumeUser.hukou_city}</td>
												<td>${resumeUser.annual_salary}</td>
												<td>${resumeUser.postcode}</td>
												<td>${resumeUser.email}</td>
												<td>${resumeUser.education}</td>
												<td>${resumeUser.school}</td>
												<td>${resumeUser.fam_phone}</td>
												<td>${resumeUser.comp_phone}</td>
												<td>${resumeUser.web}</td>
												<td>${resumeUser.basic_salary}</td>
												<td>${resumeUser.allowance}</td>
												<td>${resumeUser.bonus}</td>
												<td>${resumeUser.stock}</td>
												<td>${resumeUser.hobby}</td>
												<td>${resumeUser.target_industry}</td>
												<td>${resumeUser.target_function}</td>
												<td>${resumeUser.department}</td>
												<td>${resumeUser.position}</td>
										   	</tr>
									    </c:forEach>                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            </div>
            <!-- /.container-fluid -->
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
<!-- DataTables JavaScript -->
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/sb-admin-2.js"></script>
<script type="text/javascript" src="<%=path%>/resources/js/common.js"></script>
    
<script>
    $(document).ready(function() {
        $('#resumeUserTables').DataTable({
              responsive: true
        });
    });
</script>

</body>
</html>