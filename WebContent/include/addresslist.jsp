<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通讯</title>
</head>
<body>
<div class="listDataTableDiv">
<table  class="table table-striped table-bordered table-hover  table-condensed">
<thead><tr class="success">
<th>ID</th>
<th>用户名称</th>
<th>编辑</th>
<th>删除</th>
</tr></thead>
 <tbody>
<c:forEach var="adrlist" items="${adrlist}">
<tr>
                        <td>${adrlist.id}</td>
                        <td>${adrlist.uname}</td>
                        <td><a href="admin_property_edit.do?id=${adrlist.uid}"><span
                                class="glyphicon glyphicon-edit"></span></a></td>
                        <td><a  href="admin_property_delete.do?id=${adrlist.uid}"><span
                                class="glyphicon glyphicon-trash"></span></a></td>
 
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
 
</body>
</html>