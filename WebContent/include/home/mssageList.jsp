<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>
<div class="listDataTableDiv">
<table  class="table table-striped table-bordered table-hover  table-condensed">
<thead><tr class="success">
<th>ID</th>
<th>信息</th>
<th>发送人</th>
<th>发送时间</th>
<th>状态</th>
<th>删除</th>
</tr></thead>
 <tbody>
                <c:forEach items="${smslist}" var="smslist">
 
                    <tr>
                        <td>${smslist.id}</td>
                        <td>${smslist.message}</td>
                        <td>${smslist.suid}</td>          
                        <td>${smslist.sendtime}</td>                     
                        <td><a  href="admin_property_delete.do?id=${smslist.uid}"><span
                                class="glyphicon glyphicon-trash"></span></a></td>
 
                    </tr>                                   
                </c:forEach>
            </tbody>
        </table>
    </div>
 
</body>
</html>