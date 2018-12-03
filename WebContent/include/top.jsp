<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>

<nav class="top">
<span>
  <a href="#"><span style="color:red; margin:0px" class="glyphicon glyphicon-home"></span>企业管理首页</a>
    <span>喵，清风携来客</span>
    <c:if test="${!empty list}">
    <a href="#"> ${list} </a>
    <a href="admin_user_loginout.do">退出</a>
    </c:if>
    <c:if test="${empty list }">
    <a href="index.jsp">请登录</a>
	<a href="register.jsp">免费注册</a>
    </c:if>
   <span class="leftmsg">
    <span class="glyphicon glyphicon-user"><a href="admin_user_address.do?uid=${ID}">通讯录</a></span>
     <a href="admin_user_mssagelist.do?uid=${ID}"><span style="color:red; margin:0px;" class="glyphicon glyphicon-envelope"></span> 短消息<strong>0</strong>条</a>
  </span>
  </span>
 </nav>
