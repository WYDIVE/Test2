<!DOCTYPE html> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<html>

<head>
	<script src="<%=basePath %>/js/jquery/2.0.0/jquery.min.js"></script>
	<link href="<%=basePath %>/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="<%=basePath %>/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="<%=basePath %>/css/fore/style1.css" rel="stylesheet">
   
</head>
<script>
function formatMoney(num){   //
	num = num.toString().replace(/\$|\,/g,'');
	if(isNaN(num))
		num = "0";
	sign = (num == (num = Math.abs(num)));   //获取绝对值
	num = Math.floor(num*100+0.50000000001);
	cents = num%100;  
    num = Math.floor(num/100).toString();  
    if(cents<10)  
    cents = "0" + cents;  
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)  
    	num = num.substring(0,num.length-(4*i+3))+','+ num.substring(num.length-(4*i+3));  
    return (((sign)?'':'-') + num + '.' + cents);  
}

function checkEmpty(id, name){
    var value = $("#"+id).val();
    if(value.length==0){
         
        $("#"+id)[0].focus();
        return false;
    }
    return true;
}
 
$(function(){
  
    $("span.leaveMessageTextareaSpan").hide();
    $("img.leaveMessageImg").click(function(){
         
        $(this).hide();
        $("span.leaveMessageTextareaSpan").show();
        $("div.orderItemSumDiv").css("height","100px");
    });
     
    $("div#footer a[href$=#nowhere]").click(function(){
        alert("未做");
    });
     
    $("a.wangwanglink").click(function(){
        alert("未做");
    });
    $("a.notImplementLink").click(function(){
        alert("未做");
    });
    $("a[href$=#nowhere]").click(function(){
        alert("未做");
    });
     
});
</script>
</html>