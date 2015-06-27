<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>xiao4r</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/login/login.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="resources/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="resources/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="alert alert-warning alert-dismissible" role="alert" id="my-alert">
		        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4>警告</h4>
		        <hr>       
		        ${message}
		        <br>
		        <br>
		        <div align="center">
			        <button class="btn btn-default" onclick="window.history.go(-1)">返回</button>
			        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <a class="btn btn-default" href="/xiao4r_CRM">首页</a>
		        </div>
		    </div>
		</div>
	</div>         
</div>

</body>
<script type="text/javascript">
$('#my-alert').on('closed.bs.alert', function () {
	window.history.go(-1);
	})
</script>
</html>