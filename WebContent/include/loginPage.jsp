<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>企业管理系统</title>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script>
	$(function(){
	var msg = "${msg}";
	if(msg.length != 0){
		$("span.errorMessage").html(msg);
		$("div.loginErrorMessageDiv").show();
	} 
	
	$("form.loginForm").submit(function(){
		if($("#name").val().length == 0 || $("#password").val().length==0){
			$("span.errorMessage").html("请输入账号密码");
            $("div.loginErrorMessageDiv").show();           
            return false;
		}
		return true;
	});
	
	$("form.loginForm input").keyup(function(e){
		if(e.keyCode != 13){
			$("div.loginErrorMessageDiv").hide();
		}
	});
	})
		</script>
	</head>
	<body>
		<div class="caption">
		<div class="login">
		<form action="admin_user_login.do" method="post" class="loginForm"> 		
			<label>用户登陆</label>			
			<span><input class="form-control" type="text" id="name"  name="name" placeholder="账号"/></span><br>
			<span><input class="form-control" type="password" id="password" name="password" placeholder="密码"></span><br>
			<span><button type="submit" class="btn btn-block su" id="login">登陆</button></span>
			<div class="loginErrorMessageDiv">
                <div>
                  <span class="errorMessage"></span>
                  <span id="checkResult"></span>                 
                </div>
            </div>
		</form><br><br>
		</div>
		<span class="foot"><a  href="#nowhere">忘记密码</a><a  href="include/register.jsp"> 注册账号 </a><a  href="#nowhere"> 常见问题</a></span>
		</div>
	</body>
</html>