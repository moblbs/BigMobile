<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<form action="config.do?method=editLocation"  id="LocationFrom" method="post">
<div class="box-head">
<h3>${title}</h3>
</div>
<div class="box-content" >
<div class="row-fluid">
<div class="span12">
		
<c:if test="${flag=='0'}">
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>城市名称</label>
	<div class="controls">
	    <input type="hidden" name="parentId" value="0">
		<input type="text" name="locationName" id="locationName"  class="form-control">
	</div>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
	<button class="btn btn-primary"  type="button" onclick="mySubmit()">添加</button>
	<input type="reset" class='btn' value="重置">
		&nbsp;<input type="button" class='btn btn-danger' value="关闭"
		onclick="off()">
</div>
</c:if>


<c:if test="${flag=='1'}">
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>一级城市名称</label>
	<div class="controls">
		<input type="hidden" name="locationId"  value ="${location.locationId}">
		<input type="hidden" name="locationLevel"  value ="${location.locationLevel}">
		<input type="hidden" name="parentId"  value ="${location.parentId}">
		<input type="text" name="locationName"  id="locationName"  value="${location.locationName}"   class="form-control" >
	</div>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
	<button class="btn btn-primary" type="button" onclick="mySubmit()">修改</button>
	<input type="reset" class='btn' value="重置">
		&nbsp;<input type="button" class='btn btn-danger' value="关闭"
		onclick="off()">
</div>
</c:if>
  
  
<c:if test="${flag=='2'}">
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>二级城市名称</label>
	<div class="controls">
		 <input type="text" name="locationName" id="locationName"  class="form-control" />
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>所属省份</label>
	<div class="controls">
	<select name="parentId" class="form-control">
		<c:forEach items="${parent }" var="c" >
			<option value="${c.locationId }" ${c.locationId==parentId?'selected':'' }>${c.locationName}</option>
		</c:forEach>
	</select>
	</div>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
	<button class="btn btn-primary" type="button" onclick="mySubmit()">添加</button>
	<input type="reset" class='btn' value="重置">
		&nbsp;<input type="button" class='btn btn-danger' value="关闭"
		onclick="off()">
</div>
</c:if>


<c:if test="${flag=='3'}">
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>二级城市名称</label>
	<div class="controls">
	    <input type="hidden" name="locationId"  value ="${location.locationId}">
		<input type="hidden" name="locationLevel"  value ="${location.locationLevel}">
		<input type="text" name="locationName"  id="locationName"   value="${location.locationName}"   class="form-control" >
	</div>
</div>
<div class="control-group">
	<label for="placeholder" class="control-label"><span style="color:red;">*</span>所属省份</label>
	<div class="controls">
	<select name="parentId" class="form-control">
		<option value="">请选择</option>
		<c:forEach items="${parent }" var="c" >
			<option value="${c.locationId }" ${c.locationId==location.parentId ?'selected':'' }>${c.locationName}</option>
		</c:forEach>
	</select>
	</div>
</div>
<div class="control-group">
	<p style="color:red;" id="MSGERROR"></p>
	<button class="btn btn-primary" type="button" onclick="mySubmit()">修改</button>
	<input type="reset" class='btn' value="重置">
		&nbsp;<input type="button" class='btn btn-danger' value="关闭"
		onclick="off()">
</div>
</c:if>
			
			
</div>
</div>
</div>
</form>						
<script type="text/javascript">
function mySubmit(){
	$("#LocationFrom").submit();
}
</script>					
						
						