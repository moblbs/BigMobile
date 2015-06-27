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
                        <h1 class="page-header">用户筛选</h1>
                    </div>
                </div>
                
                <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            行业选择
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<div>
                        		<label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_car" value="label_car" checked onclick="labelCondition('labelCar')">汽车
		                        </label>
		                        <label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_education" value="label_education" onclick="labelCondition('labelEducation')">教育
		                        </label>
		                        <label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_finance" value="label_finance" onclick="labelCondition('labelFinance')">金融
		                        </label>
                        		<label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_realestate" value="label_realestate" onclick="labelCondition('labelRealestate')">房产
		                        </label>
		                        <label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_healthcare" value="label_healthcare" onclick="labelCondition('labelHealthcare')">医疗
		                        </label>
		                        <label class="radio-inline">
		                            <input type="radio" name="labelCondition" id="label_brand" value="label_brand" onclick="labelCondition('labelBrand')">品牌
		                        </label>
                        	</div>
                        	<div style="margin-top:20px;"></div>
                        	<div id="conditions">
			                	<div id="labelCar">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelCar}" var="labelCar">
			                			<label>
										    <input type="checkbox" name="label_car" value="${labelCar}" onClick="selectLabelConditions()">${labelCar}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
			                	<div id="labelEducation" style="display:none">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelEducation}" var="labelEducation">
			                			<label>
										    <input type="checkbox" name="label_education" value="${labelEducation}" onClick="selectLabelConditions()">${labelEducation}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
			                	<div id="labelFinance" style="display:none">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelFinance}" var="labelFinance">
			                			<label>
										    <input type="checkbox" name="label_finance" value="${labelFinance}" onClick="selectLabelConditions()">${labelFinance}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
			                	<div id="labelRealestate" style="display:none">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelRealestate}" var="labelRealestate">
			                			<label>
										    <input type="checkbox" name="label_realestate" value="${labelRealestate}" onClick="selectLabelConditions()">${labelRealestate}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
			                	<div id="labelHealthcare" style="display:none">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelHealthcare}" var="labelHealthcare">
			                			<label>
										    <input type="checkbox" name="label_healthcare" value="${labelHealthcare}" onClick="selectLabelConditions()">${labelHealthcare}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
			                	<div id="labelBrand" style="display:none">
			               			<label>
									    <input type="checkbox" value="" onClick="selectAllLabelConditions()">全选
									 </label>&nbsp;&nbsp;
			                		<c:forEach items="${labelBrand}" var="labelBrand">
			                			<label>
										    <input type="checkbox" name="label_brand" value="${labelBrand}" onClick="selectLabelConditions()">${labelBrand}
										 </label>&nbsp;&nbsp;
			                		</c:forEach>
			                	</div>
                        	</div>
                        	
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            	</div>
            	
	            <!-- /.row -->
	            <div class="row">
	                <div class="col-lg-6">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
	                            年龄分布
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
	                            年收入分布
	                        </div>
	                        <!-- /.panel-heading -->
	                        <div class="panel-body">
	                            <div class="flot-chart">
	                                <div class="flot-chart-content" id="flot-pie-chart2"></div>
	                            </div>
	                            <!-- <div id="morris-donut-chart"></div> -->
	                        </div>
	                        <!-- /.panel-body -->
	                    </div>
	                    <!-- /.panel -->
	                </div>
	            </div>
                
                
                
                <div class="row"></div>
                <div class="row"></div>
                <div class="row"></div>
                
                <div class="row">
                	<div class="col-lg-12">
                		<p id="totalMobileUsersByLabel" class="text-center" style="font-size:50px">${totalMobileUsersByLabel}</p>
                	</div>
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
<script type="text/javascript" src="<%=path%>/resources/js/sbadmin/sb-admin-2.js"></script>
<script type="text/javascript" src="<%=path%>/resources/js/common.js"></script>

<script type="text/javaScript">
/* 是否全选标记 */
//var checkedAll = false;

/* 全选/取消全选
* formName 所在form的name值
* checkboxName checkbox的name值
* 注意：所有checkbox的name值都必须一样，这样才能达到全选的效果
*/
/* function selectAll(formName,checkboxName){
	var form = document.all.item(formName);
	var elements = form.elements[checkboxName];
	for (var i=0;i<elements.length;i++){ 
		var e = elements[i];
		if(checkedAll){
			e.checked = false;
			form.alls.checked = false;
		} else {
			e.checked = true;
			form.alls.checked = true;
		}
	}
	if(checkedAll){
		checkedAll = false;
	} else {
		checkedAll = true;
	}
}  */

var industry;
var checkedAll = false;
var conditions;
var conditionsSelected = new Array();

var totalMobileUsersByLabel;
var UserStatByAge = ${UserStatByAge};
var UserStatByIncome = ${UserStatByIncome};

function selectAllLabelConditions(){
	industry = $("input[name=labelCondition]:checked").val();
	conditions = $("input[name='"+industry+"']");
	conditionsSelected.splice(0, conditionsSelected.length);
	for (var i=0;i<conditions.length;i++){ 
		var e = conditions[i];
		if(checkedAll){
			e.checked = false;
		} else {
			e.checked = true;
			conditionsSelected.push(e.value);
		}
	}
	
	if(checkedAll){
		checkedAll = false;
	} else {
		checkedAll = true;
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQueryByLabel",
	    data:{"queryColumn":industry, "labelConditions": conditionsSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	
	    	/* var json=JSON.stringify(res);
		    var obj = JSON.parse(json); */
		    var jsonData = eval('(' + data + ')');
	    	totalMobileUsersByLabel =  jsonData.totalMobileUsersByLabel;
	    	UserStatByAge = jsonData.UserStatByAge;
	    	UserStatByIncome = jsonData.UserStatByIncome;
	    	$("#totalMobileUsersByLabel").html(totalMobileUsersByLabel);
	    	chart();
	    }
	});
	
}

function selectLabelConditions(){
	industry = $("input[name=labelCondition]:checked").val();
	conditions = $("input[name='"+industry+"']");
	conditionsSelected.splice(0, conditionsSelected.length); 
	for (var i=0;i<conditions.length;i++){ 
		var e = conditions[i];
		if(e.checked){
			conditionsSelected.push(e.value);
		} 
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQueryByLabel",
	    data:{"queryColumn":industry, "labelConditions": conditionsSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	
		    var jsonData = eval('(' + data + ')');
	    	totalMobileUsersByLabel =  jsonData.totalMobileUsersByLabel;
	    	UserStatByAge = jsonData.UserStatByAge;
	    	UserStatByIncome = jsonData.UserStatByIncome;
	    	$("#totalMobileUsersByLabel").html(totalMobileUsersByLabel);
	    	chart();
	    }
	});
	
}

function labelCondition(obj){
    $('#conditions div').each(function(i){
        $(this).hide();
    })
    $("#"+obj).show();
    
	industry = $("input[name=labelCondition]:checked").val();
	conditions = $("input[name='"+industry+"']");
	checkedAll = false;
	for (var i=0;i<conditions.length;i++){ 
		var e = conditions[i];
		e.checked = false;
	}
	$("#totalMobileUsersByLabel").html(0);
	UserStatByAge = null;
	UserStatByIncome = null;
}

function chart() {

    var plotObj = $.plot($("#flot-pie-chart"), UserStatByAge, {
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

    var plotObj2 = $.plot($("#flot-pie-chart2"), UserStatByIncome, {
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
	
	/* Morris.Donut({
        element: 'morris-donut-chart',
        data:UserStatByIncome,
        resize: true
    }); */
}

$(chart());

</script>


</body>
</html>