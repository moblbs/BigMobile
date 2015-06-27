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
    <link href="<%=path%>/resources/css/sbadmin/dataTables.responsive.css" rel="stylesheet">
    <link href="<%=path%>/resources/css/tree.css" rel="stylesheet">
        
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
                    <div class="col-lg-12">
                        <h1 class="page-header">位置管理&nbsp;
                         <a href="javascript:void(0);" onclick="show('0','0','0')"><i class="glyphicon glyphicon-plus" style="color:RGB(0,170,255);font-size:16px;">[添城市划分根节点]</i></a>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                  <div class="col-lg-6">
                    <div class="panel-body">
                       <div class="dataTable_wrapper">
                          <div class="tree well">
                  			 <ul>
						      <!--遍历一级城市信息  -->
							  <c:forEach items="${parent }" var="c1">
						      <li>
						        <span class=""><i class="icon-folder-open"></i>${c1.locationName }</span>
					            <a  href="javascript:void(0);" onclick="show('${c1.locationId}','2','${c1.locationId}')"><img border="0" src="<%=path%>/resources/img/icon_add.png" alt="添加" title="添加" />[添加]</a>&nbsp;
					            <a  href="javascript:void(0);" onclick="show('${c1.locationId}','1','0')"><img border="0" src="<%=path%>/resources/img/icon_newedit.png" alt="修改" title="修改" />[修改]</a>&nbsp;
								<a  href="javascript:delLocation(${c1.locationId},0);" >
								<img border="0" src="<%=path%>/resources/img/icon_del.png" alt="删除" title="删除" />[删除]</a>
								 <ul>
					               <!--遍历二级级城市信息  -->
					            	<c:forEach items="${child}" var="c2">
						            	<c:if test="${c2.parentId==c1.locationId }">
						                <li id="target${c2.locationId}">
						                	<span onclick="refreshLocation(${c2.locationId })" ><i class="icon-plus-sign" id="icon${c2.locationId}"></i>${c2.locationName }</span>
								             <a  href="javascript:void(0);" onclick="show('${c2.locationId}','4','${c2.locationId}')"><img border="0" src="<%=path%>/resources/img/icon_add.png" alt="添加" title="添加" />[添加]</a>&nbsp;
					          			     <a  href="javascript:void(0);" onclick="show('${c2.locationId}','3','${c2.parentId}')"><img border="0" src="<%=path%>/resources/img/icon_newedit.png" alt="修改" title="修改" />[修改]</a>&nbsp;														<a  href="javascript:if(confirm('删除一级城市，对应二级城市也会随之删除！是否继续？')){location.href='<%=path%>/config.do?methode=delLocation&locationId=${c1.locationId}';}" >
					          			     &nbsp;
					          			     <a  href="javascript:delLocation(${c2.locationId},1);" >
											 <img border="0" src="<%=path%>/resources/img/icon_del.png" alt="删除" title="删除" />[删除]</a>
											</li>
								        </c:if>
							        </c:forEach>
							        <!--  -->
							    </ul>
						      </li>
						      </c:forEach>
						    </ul>
							</div>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                </div>
                <div class="col-lg-6">
						<div class="alert alert-danger" id="maintainLocation" 
						style="vertical-align:middle;float: left; width: 370px;position: absolute; top:15px ; left:20px; height: auto; margin-top: 0px;">
							<div style="margin: 20px 10px 20px 10px;">
								 <span style="color: red;">
								 &nbsp;&larr;&nbsp;请从左面选择操作位置信息
								 </span>
						   </div>
						   
						</div>
                </div>
                <!-- /.col-lg-12 -->
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

//传递当前位置信息ID查下级位置信息
function refreshLocation(locationId){
	$.getJSON(
		"<%=path%>/config.do?method=refreshLocation&time="+Math.random(),
		{"paretId":locationId},
		function(data){
			//在对应标签后面追加内容
			var str="<ul>";
			var index=0;
	        $.each(data, function(i, item) {
	        	str+="<li id='target"+item.locationId+"'>"
	        	   	+ "<span><i class='icon-leaf' id='icon"+item.locationId+"'></i>"+item.locationName+"</span>&nbsp;" 
		            + "<a href='javascript:void(0);' onclick='show("+item.locationId+",5,"+item.parentId+")' >" 
		            + "<img border='0' src='<%=path%>/resources/img/icon_newedit.png' alt='修改' title='修改' />[修改]</a>" 
		            + "&nbsp;" 
		            + "<a  href='javascript:void(0);' onclick='delLocation("+item.locationId+",1)' >" 
		            + "<img border='0' src='<%=path%>/resources/img/icon_del.png' alt='删除' title='删除' />[删除]</a>" 
		            + "</li>";
		           index++;
		    });
	        str+="</ul>";
	        var target = $("#target"+locationId);
	         changeIcon(locationId);
	        //查询到有数据就添加,查看时候拥有数据信息
	        if(index>0 && !target.has('ul').length){
	        	$(str).appendTo(target);
	        }
		}
	);
}

function changeIcon(locationId){
	var target = $("#icon"+locationId);
	var cls=target.attr("class");
	if(cls=='icon-minus-sign'){//打开状态：关闭
		target.removeClass().addClass("icon-plus-sign");
		$("#target"+locationId).find("ul li").hide();
	}else if(cls=='icon-plus-sign'){//关闭状态 ：打开
		target.removeClass().addClass("icon-minus-sign");
		$("#target"+locationId).find("ul li").show();
	}else if(cls=='icon-leaf'){}
}

/*
 *flag 0添加一级城市 1修改一级城市  2添加二级城市 3修改二级城市
 *parentId 当前打开的父菜单ID
 */
function show(id,flag,parentId){
	$.ajax({
		type:"post",
		url:"<%=path%>/config.do?method=toPage&time="+Math.random(),
		data:{"id":id,"flag":flag,
			"parentId":parentId},
		success:function(html){
			$("#maintainLocation").html(html);
		}
	})
}
/*关闭窗口*/
function off(){
	$("#maintainLocation").html("<div style='margin: 20px 10px 20px 10px;'>"
	+"<span style='color: red;'>&nbsp;&larr;&nbsp;请从左面选择操作位置信息</span></div>");
}
/*删除对应菜单*/
function delLocation(locationId){
	if(confirm('删除该城市其对城市将一并删除！是否继续?')){
		 $.ajax({
			type:"post",
			url:"<%=path%>/config.do?method=delLocation&time="+Math.random(),
			data:{"locationId":locationId},
			success:function(data){
				 alert(data);
				 $("#target"+locationId).remove();
			}
		 });
	}
}
</script>
</body>
</html>