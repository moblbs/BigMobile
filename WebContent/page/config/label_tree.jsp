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
    <link rel="stylesheet" href="<%=path%>/resources/css/tree.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
[class^="icon-"],
[class*=" icon-"] {
  display: inline-block;
  width: 14px;
  height: 14px;
  margin-top: 1px;
  *margin-right: .3em;
  line-height: 14px;
  vertical-align: text-top;
  background-image: url("<%=path%>/resources/img/glyphicons-halflings.png");
  background-position: 14px 14px;
  background-repeat: no-repeat;
}
.icon-plus-sign {
  background-position: 0 -96px;
}
.icon-minus-sign {
  background-position: -24px -96px;
}
.icon-folder-open {
  width: 16px;
  background-position: -408px -120px;
}
.icon-leaf {
  background-position: -48px -120px;
}
</style>
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
                    <div class="col-lg-16">
                        <h1 class="page-header">标签管理&nbsp;
                        <a href="javascript:showPage(0,'','');"><i class="glyphicon glyphicon-plus" style="color:RGB(0,170,255);font-size:16px;">[添加一级标签]</i></a>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                    <div class="tree well">
					    <ul>
					    	<c:forEach items="${labelList1}" var="l1">
					        <li id="target${l1.labelId }">
					            <span><i class="icon-folder-open"></i>${l1.labelName }</span> 
					            <a href="javascript:showPage(0,'${l1.labelId}','${l1.labelLevel }');" >
								<img border="0" src="<%=path%>/resources/img/icon_add.png" alt="添加" title="添加" />[添加]</a>
								&nbsp;
							    <a href="javascript:showPage('${l1.labelId}','${l1.labelId}','${l1.labelLevel }');" >
								<img border="0" src="<%=path%>/resources/img/icon_newedit.png" alt="修改" title="修改" />[修改]</a>
								&nbsp;
								<a  href="javascript:delLabel(${l1.labelId});" >
								<img border="0" src="<%=path%>/resources/img/icon_del.png" alt="删除" title="删除" />[删除]</a>
					             <ul>
							    	<c:forEach items="${labelList2}" var="l2">
							    	 	<c:if test="${l2.parentId==l1.labelId}">
								        	<li id="target${l2.labelId }">
								            	<span onclick="refreshLoadLabel(${l2.labelId },${l2.labelLevel})" ><i class="icon-plus-sign" id="icon${l2.labelId}"></i>${l2.labelName }</span> 
								            	<a href="javascript:showPage(0,'${l2.labelId}','${l2.labelLevel }');" >
								            	<img border="0" src="<%=path%>/resources/img/icon_add.png" alt="添加" title="添加" />[添加]</a>
								            	&nbsp;
											    <a href="javascript:showPage('${l2.labelId}','${l2.labelId}','${l1.labelLevel }');" >
												<img border="0" src="<%=path%>/resources/img/icon_newedit.png" alt="修改" title="修改" />[修改]</a>
												&nbsp;
												<a  href="javascript:delLabel(${l2.labelId});" >
												<img border="0" src="<%=path%>/resources/img/icon_del.png" alt="删除" title="删除" />[删除]</a>
								        	</li>
								        </c:if>
							        </c:forEach>
					    		 </ul>
					    		 
					        </li>
					        </c:forEach>
					    </ul>
					</div>
					
                    </div>
                   <!-- /.col-lg-12 -->
                   <div class="col-lg-6">
	                  <form action="<%=path%>/config.do?method=editLabel" method="post" id="LabelFrom">
							<div class="alert alert-danger" id="maintainLocation" 
							style="vertical-align:middle;width: 370px;position: ;top:0px ; left:20px; height: auto;display: ">
								 <div style="margin: 20px 10px 20px 10px;">
									 <span style="color: red;">
								 	 &nbsp;&larr;&nbsp;请从左面选择操作标签信息
									 </span>
						 		  </div>    
							</div>
						</form>
                   </div>
            </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
  <a href="#" title="返回顶部" id="goto-top"></a>

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
<script type="text/javascript" src="<%=path%>/resources/js/tree.js"></script>
<script type="text/javascript" src="<%=path%>/resources/js/common.js"></script>
<script type="text/javascript">
/**刷新追加子标签
 * labelId 父ID
 labelLevel 父标签级别
 **/
function refreshLoadLabel(labelId,labelLevel){
	$.getJSON(
		"<%=path%>/config.do?method=refreshLoadLabel&time="+Math.random(),
		{"labelId":labelId},
		function(data){
			//在对应标签后面追加内容
			var str="<ul>";
			var index=0;
	        $.each(data, function(i, item) {
	        	str+="<li onclick='refreshLoadLabel("+item.labelId+","+item.labelLevel+")' id='target"+item.labelId+"'>"
	        	   	+ "<span><i class='icon-leaf' id='icon"+item.labelId+"'></i>"+item.labelName+"</span>" 
		            + "<a href='javascript:void(0);' onclick='showPage(0,"+item.labelId+","+item.labelLevel+")' >" 
		            + "<img border='0' src='<%=path%>/resources/img/icon_add.png' alt='添加' title='添加' />[添加]</a>" 
		            + "&nbsp;" 
		            + "<a href='javascript:void(0);' onclick='showPage("+item.labelId+","+item.labelId+","+labelLevel+")' >" 
		            + "<img border='0' src='<%=path%>/resources/img/icon_newedit.png' alt='修改' title='修改' />[修改]</a>" 
		            + "&nbsp;" 
		            + "<a  href='javascript:void(0);' onclick='delLabel("+item.labelId+")' >" 
		            + "<img border='0' src='<%=path%>/resources/img/icon_del.png' alt='删除' title='删除' />[删除]</a>" 
		            + "</li>";
		           index++;
		    });
	        str+="</ul>";
	        var target = $("#target"+labelId);
	         changeIcon(labelId);
	        //查询到有数据就添加,查看时候拥有数据信息
	        if(index>0 && !target.has('ul').length){
	        	$(str).appendTo(target);
	        }
		}
	);
}

//根据id来查询一个标签信息
function findLabelById(labelId){
 	$.ajax({
	    type: "POST",
	    url: "<%=path%>/config.do?method=findLabelById",
	    data:{"labelId":labelId},
	    success: function(html)
	    {
	    	$("#maintainLocation").html(html);
	    }
	});
}
//根据id来查询一个标签信息
function showPage(labelId,parentId,labelLevel){
 	$.ajax({
	    type: "POST",
	    url: "<%=path%>/config.do?method=showPage",
	    data:{"labelId":labelId,
	    	"parentId":parentId,
	    	"labelLevel":labelLevel},
	    success: function(html)
	    {
	    	$("#maintainLocation").html(html);
	    }
	});
}

//删除信息
function delLabel(labelId){
	if(confirm('删除该标签其对应子标签将一并删除，确定要继续吗?')){
		$.ajax({
		    type: "POST",
		    url: "<%=path%>/config.do?method=delLabel",
		    data:{"labelId":labelId},
		    success: function(data)
		    {
		    	alert(data);
		        location.reload();
		    }
		});
	}
}
/*关闭窗口*/
function off(){
	$("#maintainLocation").html("<div style='margin: 20px 10px 20px 10px;'>"
	+"<span style='color: red;'>&nbsp;&larr;&nbsp;请从左面选择操作标签信息</span></div>");
}


function changeIcon(labelId){
	var target = $("#icon"+labelId);
	var cls=target.attr("class");
	if(cls=='icon-minus-sign'){//打开状态：关闭
		target.removeClass().addClass("icon-plus-sign");
		$("#target"+labelId).find("ul li").hide();
	}else if(cls=='icon-plus-sign'){//关闭状态 ：打开
		target.removeClass().addClass("icon-minus-sign");
		$("#target"+labelId).find("ul li").show();
	}
}
</script>
</body>
</html>