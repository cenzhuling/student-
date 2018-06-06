<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理系统</title>

<style>
header {
    background-color:#FAEBD7;
    color:black;
    text-align:center;
    padding:5px;	 
}
*{
box-sizing:border-box;
}
</head>
<body bgcolor="#FFDAB9">
margin:0;
}
/* stytle of header*/
.header{
padding:20px;
text-align:center;
}
/* stytle of top navi*/

.topnavi{
overflow:hidden;
padding:40px;
color:black
}
.topnavi a {
display:block;
text-decoration:none;
color:#f2f2f2;
float:left;/* all in one line*/
padding:20px;
}
.topnavi a:hover{
background-color:#ddd;
color:black;
}

/*style of main content*/
.column{
float:left;
}
.column.middle {
width:50%;
}
.column.side{
width:22%;
}
.row:after{
content:"";
display:table;
clear:both;
}
@media screen and (max-width:400px){
.column.middle,.column.side{
width:100%;
}
}
.footer{
background-color:#f1f1f1;
text-align:center;
padding:15px 10px;
}
footer {
    background-color:#F0F8FF;
    color:black;
    clear:both;
    text-align:center;
    padding:10px;
    }
</style>
</head>
<body background="http://www.fzlol.com/upimg/allimg/150112/1_11224GI5.jpg">
<div class="header">
<header>
<hr>
<h1>学生管理系统</h1>
</header>
</div>
<div class="topnavi">
<table width="700" height="6" border="8" align="center" cellspacing="10">
<th></th>
<tr bgcolor="#5F9EA0">
<td align="center" valign="middle"><a href="FindServlet">查询所有学生信息</a></td>
<td align="center" valign="middle"><a href="choice course.jsp">已修课程查询</a></td>
<td align="center" valign="middle"><a href="course.jsp">课表查询</a></td>
<tr><td align="center" valign="middle" bgcolor="#8FBC8F" ><a href="FindServlet1">删除学生信息</a></td></tr>

<tr><td align="center" valign="middle" bgcolor="#8FBC8F"><a href="FindServlet2">修改学生信息</a></td></tr>

<tr><td align="center" valign="middle" bgcolor="#8FBC8F"><a href="FindServlet3">分页查询学生信息</a></td></tr>

<tr><td align="center" valign="middle" bgcolor="#8FBC8F" ><a href="activities.jsp">学生活动</a></td></tr>

<tr><td align="center" valign="middle" bgcolor="#8FBC8F" ><a href="addinformation.jsp">留言</a></td></tr>

</table>
</div>
</div>
<p align="center"><a href="login.jsp">添加登录</a></p>

</form>
</div>
<footer>欢迎进入学生管理系统!</footer>
</body>
</html>