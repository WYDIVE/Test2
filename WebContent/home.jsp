<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="./include/header.jsp" %>
    <%@ include file="./include/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>前台</title>
</head>
<body>
<div class="noticnav">
<marquee behavior="alternate">
公告：${noticelist.title}<br>
内容：${noticelist.content}<br>
推送时间：${noticelist.sendtime}
</marquee>
</div>
<div></div>
<%@ include file="./include/workLog.jsp" %>
</body>
</html>