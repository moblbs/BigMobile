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
                        <h1 class="page-header">企业家</h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            企业家列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="enterpriseUserTables">
                                    <thead>
                                        <tr>
                                            <th>企业注册号</th>
                                            <th>企业名称</th>
                                            <th>地址</th>
                                            <th>邮编</th>
                                            <th>注册资本（人民币）</th>                  
                                            <th>注册资本（美元）</th>
                                            <th>注册日期</th>
                                            <th>企业截止日期</th>
                                            <th>行业代码</th>
                                            <th>经营范围</th>
                                            <th>企业类型</th>
                                            <th>法人</th>
                                            <th>法人电话</th>
                                            <th>联系人</th>
                                            <th>联系人电话</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${enterpriseUserList}" var="enterpriseUser">
										   	<tr>
											   	<td>${enterpriseUser.enterprise_egister_code}</td>
												<td>${enterpriseUser.enterprise_name}</td>
												<td>${enterpriseUser.address}</td>
												<td>${enterpriseUser.postcode}</td>
												<td>${enterpriseUser.register_capital_cny}</td>
												<td>${enterpriseUser.register_capital_dollar}</td>
												<td>${enterpriseUser.register_date}</td>
												<td>${enterpriseUser.effect_date}</td>
												<td>${enterpriseUser.industry_code}</td>
												<td>${enterpriseUser.operation_field}</td>
												<td>${enterpriseUser.enterprise_type}</td>
												<td>${enterpriseUser.corporate_person}</td>
												<td>${enterpriseUser.corporate_person_mobile}</td>
												<td>${enterpriseUser.contact_person}</td>
												<td>${enterpriseUser.contact_person_mobile}</td>
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
        $('#enterpriseUserTables').DataTable({
              responsive: true
        });
    });
</script>

</body>
</html>