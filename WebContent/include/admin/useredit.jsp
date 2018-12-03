<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="adminHeader.jsp" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
</head>
<body>

<h1>萧十一</h1>
<div class="workingArea">
<ol class="breadcrumb">
<li><a href="amdmin_user_userlist.do">所有分类</a></li>
<li class="active">编辑用户</li>
</ol>
</div>
<div class="panel panel-warning editDiv">
<div class="panel-heading">编辑用户</div>
<div class="panel-body">
<form method="post" action="admin_user_update.do"  id="editForm">
<table class="editTable">
  <tr><td>用户名</td>
     <td><input type="text" class="form-control" name="name" id="name" value="${usero.name }" /></td>
     </tr>
     <tr><td>密码</td>
     <td><input type="password" class="form-control" name="password" value="${usero.password }" ></td>
     </tr>
     <tr class="submitTR">
     <td><input type="text" name="id" value="${usero.id }" readonly="readonly" /></td>
     <td><button type="submit" class="btn btn-default">Submit</button></td>
     </tr>
</table>
</form>
</div>
</div>
</body>
</html>