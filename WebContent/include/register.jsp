<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script>
$(function(){
	var msg="${msg}";
	if(msg.length !=0){
		$("span.errorMessage").html(msg);
		$("div.registerErrorMessageDiv").show();
	}
	$("form.registerForm").submit(function(){
		if($("#name").val().length ==0){
			$("span.errorMessage").html("请输入用户名");
			$("div.registerErrorMessageDiv").show();
			return false;
		}
		if($("#password").val().length ==0){
			$("span.errorMessage").html("请输入密码");
			$("div.registerErrorMessageDiv").show();
			return false;
		}
		if($("#repeatpassword").val().length ==0){
			$("span.errorMessage").html("请输入确认密码");
			$("div.registerErrorMessageDiv").show();
			return false;
		}
		if($("#password").val() != $("#repeatpassword").val()){
			$("span.errorMessage").html("两次密码不相同");
			$("div.registerErrorMessageDiv").show();
			return false;
		}
		return true;		
	})
 	$("form.registerForm input").keyup(function(e){
		if(e.KeyCode !=13){
			$("div.registerErrorMessageDiv").hide();
		}
	}) 
})
</script>
</head>
<body>
<form method="post" action="admin_user_register.do" class="registerForm">
	<div class="registerDiv">
		<div class="registerErrorMessageDiv">
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
				<span class="errorMessage"></span>
			</div>
		</div>
	
		<table align="center" class="registerTable">
			<tbody>
				<tr>
					<td class="registerTip registerTableLeftTD">设置会员名</td>
	            	<td></td>
				</tr>
				<tr>
		            <td class="registerTableLeftTD">登陆名</td>
		            <td class="registerTableRightTD"><input placeholder="会员名一旦设置成功，无法修改" name="name" id="name"> </td>
	        	</tr>
	        	<tr>
		            <td class="registerTableLeftTD">登陆密码</td>
		            <td class="registerTableRightTD"><input type="password" placeholder="设置你的登陆密码" name="password" id="password"> </td>
	        	</tr>
	        	<tr>
		            <td class="registerTableLeftTD">密码确认</td>
		            <td class="registerTableRightTD"><input type="password" placeholder="请再次输入你的密码" id="repeatpassword"> </td>
	        	</tr>
	        	<tr>
	            	<td class="registerButtonTD" colspan="2">
	                	<a href=""><button type="submit">提   交</button></a>	      
	            	</td>	            	
	        	</tr>
	        	<tr>	   
	        	<td class="registerButtonTD" colspan="2">
	                	<a href="login.jsp"><button type="button">登  陆</button></a>	      
	             </td>
	             </tr> 
			</tbody>
		</table>
	</div>
</form>
</body>
</html>