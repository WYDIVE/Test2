<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航</title>
</head>
<body>
<div class="navigatorDiv">
<nav class="navbar navbar-default">
<ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="#">后台管理</a></li>
  <li role="presentation"><a href="amdmin_user_userlist.do">用户管理</a></li>
  <li role="presentation"><a href="admin_user_msgAll.do">通信管理</a></li>
  <li role="presentation"><a href="#">工作管理</a></li>
  <li role="presentation"><a href="#">企业管理</a></li>
</ul>
<span style="float:right;">
后台台，欢迎  ${list} <a href="admin_user_loginout.do">退出</a>
</span>
</nav>
</div>
</body>
</html>