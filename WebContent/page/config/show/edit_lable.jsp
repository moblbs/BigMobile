<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path=request.getContextPath();
%>
<c:if test="${!empty label }" var="empty_Label">
<h4 align="center">修改标签信息</h4>
<div class="control-group">
<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签名称</label>
	<div class="controls">
		<input type="hidden"  name="labelId"  value="${label.labelId}"  >
		<input type="hidden"  name="labelLevel"  id="labelLevel" value="${label.labelLevel}"  >
		<input type="hidden"  name="parentId" id="parentId"  value="${label.parentId}"  >
		<input type="text"   class="form-control" name="labelName"  id="labelName"  value="${label.labelName}"  >
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签等级</label>
<div class="controls">
<select disabled="disabled" class="form-control" >
    <c:forEach items="${labelType}" var="labelLevel">
	<option value="${labelLevel}" ${label.labelLevel==labelLevel?'selected':'' }>${labelLevel}级标签</option>
	</c:forEach>
	</select>
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>所属父及标签</label>
	<div class="controls">
	<select disabled="disabled" class="form-control" >
		 <c:if test="${label.parentId==0}" var="parentId_test">
			<option value="0" selected>根标签</option>
		 </c:if>
		  <c:if test="${not parentId_test}" >
		  <c:forEach items="${parentLabel}" var="l">
			<option value="${l.labelId}" ${label.parentId==l.labelId?'selected':'' }>${l.labelName}</option>
		  </c:forEach>
		  </c:if>
	</select>
	</div>
</div>
  <div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签搜索关键字</label>
	<div class="controls">
		<input type="text"   class="form-control" name="matchKeywords"  id="matchKeywords"  value="${label.matchKeywords}" />
	</div>
</div>
 <div class="control-group" id="URL_DIV">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签匹配URL</label>
	<c:if test="${empty urls}" var="empty_urls">
	<div class="row" >
		<div class="col-xs-9"><input type="text"  class="form-control" name="matchUrl"  placeholder='输入地匹配地址'></div>
		<div class="col-xs-1" style="margin-top: 7px;"><i title="添加" onclick="addUrl()" class="glyphicon glyphicon-plus"></i></div>
		<div class='col-xs-1' style='margin-top: 7px;'><i title='删除' onclick='delUrl(this)' class='glyphicon glyphicon-remove'></i></div>
	</div>
	</c:if>
	
	<c:if test="${not empty_urls}">
		<c:forEach items="${urls }" var="url">
		<div class="row" >
			<div class="col-xs-9">
			<input type="text"   class="form-control" name="matchUrl"  id="matchUrl"  value="${url.matchUrl}" />
			</div>
			<div class="col-xs-1" style="margin-top: 7px;"><i title="添加" onclick="addUrl()" class="glyphicon glyphicon-plus"></i></div>
			<div class='col-xs-1' style='margin-top: 7px;'><i title='删除' onclick='delUrl(this)' class='glyphicon glyphicon-remove'></i></div>
		</div>
		</c:forEach>
	</c:if>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
  <button class="btn btn-primary" type="button" id="deitSbumit">修改</button>
 &nbsp;<input type="reset" class='btn' value="重置">
	&nbsp;<input type="button" class='btn btn-danger' value="关闭"
	onclick="off()">
</div>
</c:if>


<c:if test="${not empty_Label}" >
<h4 align="center">添加标签信息</h4>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签名称</label>
	<div class="controls">
		<input type="text"   class="form-control" name="labelName"  id="labelName"  value=""  >
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>添加标签等级</label>
	<div class="controls">
	<select name="labelLevel"  class="form-control" id="labelLevel">
		<c:if test="${!empty labelLevel}" var="empty_labelLevel">
			<option value="">请选择</option>
			<c:set var="index" value="0"></c:set>
		    <c:forEach items="${labelType}" var="level">
		     	<c:set var="index" value="${index + 1}"/>  
				<option value="${level}" ${labelLevel==level ? 'selected':''}>${level}级标签</option>
			</c:forEach>
			<!-- 最下面的那个级别 -->
			<c:if test="${index>0}">
				<c:set var="index" value="${index + 1}"/>  
			   <option value="${index}" ${labelLevel==index ? 'selected':''}>${index}级标签</option>
			</c:if>
		</c:if>
		<c:if test="${not empty_labelLevel}">
			<option value="1">一级标签</option>
		</c:if>
	</select>
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>所属父及标签</label>
	<div class="controls">
	<select name="parentId" class="form-control" id="parentId">
		  <c:if test="${empty parentLabel}" var="empty_parentLabel">
		    <option value="0">根标签</option>
		  </c:if>
		  <c:if test="${not empty_parentLabel}" >
		 	 <c:forEach items="${parentLabel}" var="l">
			 <option value="${l.labelId}" ${parentId==l.labelId?'selected':'' }>${l.labelName}</option>
		 	 </c:forEach>
		  </c:if>
	</select>
	</div>
</div>
  <div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签搜索关键字</label>
	<div class="controls">
		<input type="text"   class="form-control" name="matchKeywords"  id="matchKeywords"  value=""  >
	</div>
</div>
 <div class="control-group" id="URL_DIV">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>标签匹配URL</label>
	<div class="row" >
		<div class="col-xs-9"><input type="text"  class="form-control" name="matchUrl"  placeholder='输入地匹配地址' ></div>
		<div class="col-xs-1" style="margin-top: 7px;"><i title="添加" onclick="addUrl()" class="glyphicon glyphicon-plus"></i></div>
	</div>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
	<button class="btn btn-primary" type="button" id="deitSbumit">添加</button>
	&nbsp;<input type="reset" class='btn' value="重置">
	&nbsp;<input type="button" class='btn btn-danger' value="关闭" onclick="off()">
 </div>
 </c:if>
 
<script type="text/javascript">
	//即时查询对应标签类型的菜单
	$("#labelLevel").change(function(){
		$("#parentId option").remove();
		if($("#labelLevel").val()==""){
			return;
		}
		$.getJSON(
		"<%=path%>/config.do?method=findByLabelEvel&time="+Math.random(),
		{"labelLevel":$("#labelLevel").val()},
		function(data){
	        $.each(data, function(i, item) {	
	        	$("<option value='"+item.labelId+"'>"+item.labelName+"</option>").appendTo($("#parentId"));
		    });
		}
		);
	});
	
	//提交form 表单参数验证
	$("#deitSbumit").click(function(){
		if(isNull($("#labelLevel").val())){
			$("#MSGERROR").html("请选择标签级别");
		    return ;	
		}else if(isNull($("#labelName").val())){
			$("#MSGERROR").html("标签名称不能为空");
			 return ;	
		}else if(isNull($("#matchKeywords").val())){
			$("#MSGERROR").html("请填写标签匹配关键字");
			 return ;	
		}else if(isNull($("#matchUrl").val())){
			$("#MSGERROR").html("匹配URL不能为空");
			 return ;	
		}else if(isNull($("#parentId").val())){
			$("#MSGERROR").html("请选择对应所属父级标签");
			 return ;	
		}
		$("#LabelFrom").submit();
	});
	
	//追加
	function addUrl(){
		var input_url="<div class='control-group' id='URL_DIV'><div class='row' >"
		+"<div class='col-xs-9'><input type='text'  class='form-control' name='matchUrl'  placeholder='输入地匹配地址' ></div>"
		+"<div class='col-xs-1' style='margin-top: 7px;'><i title='添加' onclick='addUrl()' class='glyphicon glyphicon-plus'></i></div>"
		+"<div class='col-xs-1' style='margin-top: 7px;'><i title='删除' onclick='delUrl(this)' class='glyphicon glyphicon-remove'></i></div>"
		+"</div></div>";
		$("div[id='URL_DIV']:last").append(input_url); 
	}
	//删除 当前父节点的父节点
	function delUrl(obj){
		$(obj).parent().parent().remove();
	}
</script>