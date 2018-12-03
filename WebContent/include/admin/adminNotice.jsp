<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告管理</title>
</head>
<body>
<div class="listDataTableDiv">
<h2 style="text-align:center;">公告</h2>
<table  class="table table-striped table-bordered table-hover  table-condensed">
<thead><tr class="success">
<th>ID</th>
<th>标题</th>
<th>内容</th>
<th>编辑</th>
<th>删除</th>
</tr></thead>
 <tbody>          
                    <tr>
                        <td>${noticelist.id}</td>
                        <td>${noticelist.title}</td>
                         <td>${noticelist.content}</td>
                        <td><a href="admin_property_edit.do?id=${noticelist.id}"><span
                                class="glyphicon glyphicon-edit"></span></a></td>
                        <td><a  href="admin_property_delete.do?id=${noticelist.id}"><span
                                class="glyphicon glyphicon-trash"></span></a></td>
 
                    </tr>
            </tbody>
        </table>
    </div>
</body>
</html>