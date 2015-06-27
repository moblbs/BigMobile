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
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">用户统计</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            行业分布
                        </div>
                        <div class="panel-body">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-pie-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            收入分布
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="morris-donut-chart"></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<%=path%>/resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=path%>/resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=path%>/resources/js/sbadmin/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<%=path%>/resources/js/sbadmin/raphael-min.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/morris.min.js"></script>
    <%-- <script src="<%=path%>/resources/js/sbadmin/morris-data.js"></script> --%>
    
    <script src="<%=path%>/resources/js/sbadmin/excanvas.min.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/jquery.flot.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/jquery.flot.pie.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/jquery.flot.resize.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/jquery.flot.time.js"></script>
    <script src="<%=path%>/resources/js/sbadmin/jquery.flot.tooltip.min.js"></script>
    <%--  <script src="<%=path%>/resources/js/sbadmin/flot-data.js"></script> --%>

    <!-- Custom Theme JavaScript -->
    <script src="<%=path%>/resources/js/sbadmin/sb-admin-2.js"></script>
    
    <script>
    $(function() {
    	
    	/* var data = [{
            label: "Series 0",
            data: 1
        }, {
            label: "Series 1",
            data: 3
        }, {
            label: "Series 2",
            data: 9
        }, {
            label: "Series 3",
            data: 20
        }]; */

        var plotObj = $.plot($("#flot-pie-chart"), ${UserStatByIndustry}, {
            series: {
                pie: {
                    show: true
                }
            },
            grid: {
                hoverable: true
            },
            tooltip: true,
            tooltipOpts: {
                content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20,
                    y: 0
                },
                defaultTheme: false
            }
        });
    	
    	Morris.Donut({
            element: 'morris-donut-chart',
            data:${UserStatByIncome},
            resize: true
        });
    });

    </script>

</body>

</html>
