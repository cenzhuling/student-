<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
header {
    background-color:#FAEBD7;
    color:white;
    text-align:center;
    padding:5px;	 
}
a
nav {
    line-height:30px;
    background-color:#eeeeee;
    height:450px;
    width:100px;
    float:left;
    padding:5px;	      
}

section {
    width:550px;
    tex-align:center;
    padding:5px; 	 
}


footer {
    background-color:#F0F8FF;
    color:black;
    clear:both;
    text-align:center;
    padding:20px;
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录。。</title>
</head>
<body background="http://pic29.photophoto.cn/20131216/0008020291746654_b.jpg">
<center>
<header>
<hr>
<h1>学生信息系统登录</h1>
</header>

<nav></nav>

<section>

<form action="Login" method="post">
<center>
 账 号：<input name="number" type="text" id="number" maxlength="20">
<br>
<br>

密  码：<input name="password" type="password" id="password" size="20" maxlength="20">
<br>
<br>

<input name="submit"type="submit"value="登 录">
<input name="reset"type="submit"value="重 置">
<a href="message.jsp">注 册</a>
</center>
</form>

</section>

<footer>
www.imais_class.com
</footer>
</body>
</html>