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
                        <h1 class="page-header">手机用户</h1>
                    </div>
                </div>
                
                <div class="row">
                	<div class="col-lg-12">
                		<label>行业：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               			<label>
						    <input type="checkbox" value="" onClick="selectAllIndustry()">全选
						 </label>&nbsp;&nbsp;
                		<c:forEach items="${industry}" var="industry">
                			<label>
							    <input type="checkbox" name="industry" value="${industry}" onClick="selectIndustry()">${industry}
							 </label>&nbsp;&nbsp;
                		</c:forEach>
                	</div>
                </div>
                
                <div class="row">
                	<div class="col-lg-12">
                		<label>年收入：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               			<label>
						    <input type="checkbox" value="" onClick="selectAllIncome()">全选
						 </label>&nbsp;&nbsp;
                		<c:forEach items="${income}" var="income">
                			<label>
							    <input type="checkbox" name="income" value="${income}" onClick="selectIncome()">${income}
							 </label>&nbsp;&nbsp;
                		</c:forEach>
                	</div>
                </div>
                
                <div class="row">
                	<div class="col-lg-12">
                		<label>学历：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               			<label>
						    <input type="checkbox" value="" onClick="selectAllEducation()">全选
						 </label>&nbsp;&nbsp;
                		<c:forEach items="${education}" var="education">
                			<label>
							    <input type="checkbox" name="education" value="${education}" onClick="selectEducation()">${education}
							 </label>&nbsp;&nbsp;
                		</c:forEach>
                	</div>
                </div>
                
                <div class="row"></div>
                <div class="row"></div>
                <div class="row"></div>
                
                <div class="row">
                	<div class="col-lg-12">
                		<p id="totalMobileUsers" class="text-center" style="font-size:300px">${totalMobileUsers}</p>
                	</div>
                </div>
                
                <!-- /.row -->
                <%-- <div class="row">
                <div class="col-lg-12">
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            用户列表
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="mobileUserTables">
                                    <thead>
                                        <tr>
                                            <th>手机号码</th>
                                            <th>姓名</th>                 
                                            <th>性别</th>
                                            <th>出生日期</th> 
                                            <th>地址</th>
                                            <th>学历</th>
                                            <th>行业</th>
                                            <th>年收入</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${mobileUsersList}" var="mobileUser">
										   	<tr>
											   	<td>${mobileUser.mobile}</td>
										   		<td>${mobileUser.name}</td>
											   	<td>${mobileUser.gender}</td>
											   	<td>${mobileUser.birthdate}</td>
											   	<td>${mobileUser.address}</td>
											   	<td>${mobileUser.education}</td>
											   	<td>${mobileUser.industry}</td>
											   	<td>${mobileUser.annualincome}</td>
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
            </div> --%>
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


var checkedAllIndustry = false;
var checkedAllIncome = false;
var checkedAllEducation = false;

var industrySelected = new Array();
var incomeSelected = new Array();
var educationSelected = new Array();

function selectAllIndustry(){
	var industries = $("input[name='industry']");
	for (var i=0;i<industries.length;i++){ 
		var e = industries[i];
		if(checkedAllIndustry){
			e.checked = false;
		} else {
			e.checked = true;
		}
	}
	
	if(checkedAllIndustry){
		checkedAllIndustry = false;
	} else {
		checkedAllIndustry = true;
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"incomeSelected":incomeSelected, "educationSelected": educationSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}

function selectIndustry(){
	var industries = $("input[name='industry']");
	industrySelected.splice(0, industrySelected.length); 
	for (var i=0;i<industries.length;i++){ 
		var e = industries[i];
		if(e.checked){
			industrySelected.push(e.value);
		} 
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"industrySelected":industrySelected, "incomeSelected":incomeSelected, "educationSelected": educationSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}


function selectAllIncome(){
	var incomes = $("input[name='income']");
	for (var i=0;i<incomes.length;i++){ 
		var e = incomes[i];
		if(checkedAllIncome){
			e.checked = false;
		} else {
			e.checked = true;
		}
	}
	
	if(checkedAllIncome){
		checkedAllIncome = false;
	} else {
		checkedAllIncome = true;
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"industrySelected":industrySelected, "educationSelected": educationSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	 
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}

function selectIncome(){
	var incomes = $("input[name='income']");
	incomeSelected.splice(0, incomeSelected.length); 
	for (var i=0;i<incomes.length;i++){ 
		var e = incomes[i];
		if(e.checked){
			incomeSelected.push(e.value);
		} 
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"industrySelected":industrySelected, "incomeSelected":incomeSelected, "educationSelected": educationSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	 
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}



function selectAllEducation(){
	var educations = $("input[name='education']");
	for (var i=0;i<educations.length;i++){ 
		var e = educations[i];
		if(checkedAllEducation){
			e.checked = false;
		} else {
			e.checked = true;
		}
	}
	
	if(checkedAllEducation){
		checkedAllEducation = false;
	} else {
		checkedAllEducation = true;
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"industrySelected":industrySelected, "incomeSelected":incomeSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}

function selectEducation(){
	var educations = $("input[name='education']");
	educationSelected.splice(0, educationSelected.length); 
	for (var i=0;i<educations.length;i++){ 
		var e = educations[i];
		if(e.checked){
			educationSelected.push(e.value);
		} 
	}
	
	$.ajax({
	    type: "POST",
	    url: "<%=path%>/mobileUser.do?method=toMobileUsersQuery",
	    data:{"industrySelected":industrySelected, "incomeSelected":incomeSelected, "educationSelected": educationSelected, "refresh":true},
	    traditional:true,
	    success: function(data)
	    {	
	    	$("#totalMobileUsers").html(data);
	    }
	});
	
}
</script>
    
<!-- <script>
    $(document).ready(function() {
        $('#mobileUserTables').DataTable({
              responsive: true
        });
    });
</script> -->

</body>
</html>