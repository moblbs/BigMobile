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
                        <h1 class="page-header">车主用户</h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            车主列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="carUserTables">
                                    <thead>
                                        <tr>
                                            <th>车牌号码</th>
                                            <th>车型</th>
                                            <th>车主</th>
                                            <th>地址</th>
                                            <th>车辆状态</th>                  
                                            <th>发证机关</th>
                                            <th>用户类型</th>
                                            <th>品牌</th>
                                            <th>获得方式</th>
                                            <th>车输识别代码</th>
                                            <th>引擎编号</th>
                                            <th>颜色</th>
                                            <th>登记日期</th>
                                            <th>发证日期</th>
                                            <th>发证截止日期</th>
                                            <th>保险截止日期</th>
                                            <th>电话</th>
                                            <th>证件名称</th>
                                            <th>证件号码</th>
                                            <th>邮编</th>
                                            <th>进口或国产</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${carUserList}" var="carUser">
										   	<tr>
											   	<td>${carUser.vehicle_code}</td>
												<td>${carUser.vehicle_type}</td>
												<td>${carUser.owner}</td>
												<td>${carUser.dwelling_place}</td>
												<td>${carUser.vehicle_state}</td>
												<td>${carUser.provide_cert_department}</td>
												<td>${carUser.use_type}</td>
												<td>${carUser.manufacturer_model}</td>
												<td>${carUser.obtain_quomodo}</td>
												<td>${carUser.vehicle_identify_code}</td>
												<td>${carUser.engine_code}</td>
												<td>${carUser.vehicle_color}</td>
												<td>${carUser.first_reg_date}</td>
												<td>${carUser.provide_cert_date}</td>
												<td>${carUser.provide_terminate_date}</td>
												<td>${carUser.insurance_terminate_date}</td>
												<td>${carUser.connect_tel}</td>
												<td>${carUser.cert_name}</td>
												<td>${carUser.cert_code}</td>
												<td>${carUser.reg_zipcode}</td>
												<td>${carUser.homebred_or_import}</td>
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
        $('#carUserTables').DataTable({
              responsive: true
        });
    });
</script>

</body>
</html>