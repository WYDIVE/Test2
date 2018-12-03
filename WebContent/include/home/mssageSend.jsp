<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消息</title>
<script src="//unpkg.com/wangeditor/release/wangEditor.min.js"></script>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>	

<style>
.smshead {
	border: 1px solid blue;	
}
</style>
</head>
<body>
<div class="smshead">
	<form action="admin_user_smsave.do" method="post" class="smsForm">
	<span style="display:none;"><input type="text" name="uid" value="${ID}" >${ID} </span>
        <span><select name="suid">
   <c:forEach var="maptmp" items="${mapt}">
  <option value="${maptmp.key}">${maptmp.key}  ${maptmp.value }</option>
  </c:forEach>
</select></span><span><button type="submit">发送</button></span>

       <div id="div1">
       </div>
    <textarea id="text1" name="message" style="width:100%; height:200px;display: none;"></textarea>

    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../wangEditor.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div1')
        var $text1 = $('#text1')
        editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        }
        editor.create()
        // 初始化 textarea 的值
        $text1.val(editor.txt.html())
    </script>
     
    </form>
    
</div>
</body>
</html>