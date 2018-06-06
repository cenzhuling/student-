<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%
response.setHeader("refresh","30;URL=index.jsp");
%>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>错误提示页</title>
</head>

<body  style="background-image:url(image/denglu.jpg); width： 1080px;  ">



<div style="position:absolute;top:50%;left:50%;margin-left:-200px;margin-top:-100px;"><h3><center>您输入的用户名或密码错误，请<a href="login.jsp">重新登录</a>！</center></h3></div>



</body>
</html>