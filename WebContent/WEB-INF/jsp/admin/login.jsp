  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登录</title>

	<style type="text/css">
	
	table{
		text-align: center;
		align:center;
        border-top-right-radius: 5px;
        border-bottom-right-radius: 5px;
        background-color: rgba(255, 255, 255, 0.5);
        height:246px;
        width:250px;
        font-size:18px;
	}
	.textSize{
		width: 120px;
		height: 25px;
	}
	* {
		margin: auto;
		padding: auto;
		
	}
	body {

		text-align: center;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		margin: 10px 10px auto;
		background-image: url(images/admin/bb.jpg);
		background-size: 100%;
	}
	.div0{
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
		width: 50%;
		height: 30%;
		margin: auto;
	}
	.div1{
	
		border-radius:5px 0 0 5px;
	    opacity:0.8;
	    
	}

	</style>
	
	<script type="text/javascript">
	//确定按钮
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	</script>
  </head>
  <body>
  	<form:form action="admin/login" modelAttribute="auser" method="post">
	<div class="div0">
	<div class="div1" style="display:inline-block;"><img class="iteration" src="images/admin/loginp.png" /> </div>
	<div class="div2" style="display:inline-block;">
	<table>
		<tr>
			<td colspan="2"><img src="images/admin/login.gif"></td>
		</tr>
		<tr>
			<td align=right>姓名：</td>
			<td align=left>
				<form:input path="aname" cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			<td align=right>密码：</td>
			<td align=left>
				<form:password path="apwd" cssClass="textSize" maxlength="20"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="image" src="images/admin/ok.gif" onclick="gogo()" >
				<input type="image" src="images/admin/cancel.gif" onclick="cancel()" >
			</td>
		</tr>
	</table>
	</div>
	</div>
	</form:form>
	${msg }
  </body>
</html>









