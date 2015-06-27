<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link href="<%=path%>/resources/css/sbadmin/metisMenu.min.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/sbadmin/timeline.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/sbadmin/sb-admin-2.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/sbadmin/morris.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/sbadmin/font-awesome.min.css" rel="stylesheet" type="text/css">
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
		<%@ include file="headBar.jsp"%>
		<%@ include file="leftSideBar.jsp"%>
        </nav>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">大移动数据平台欢迎您！</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script type="text/javascript" src="<%=path%>/resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/sbadmin/metisMenu.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/js/sbadmin/sb-admin-2.js"></script>
    
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/dataTables.bootstrap.min.js"></script>
    
    
</body>
</html>
