<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工作日志</title>
</head>
<body>
<div class="worklog">
<h2>工作日志</h2>
<c:forEach items="${workList}" var="workList" >
<div class="worktnav">
<span>人物:${list}</span><span>工作日志记录：${workList.year }年 ${workList.month }月${workList.day }日 </span>
</div>
<div class="workcontent">
<span>tittle:${workList.title }</span><br>
<span>describe:${workList.title }</span><br>
<span>日志记录时间：${workList.longtime }</span>
</div>
<hr>
</c:forEach>
</div>
</body>
</html>