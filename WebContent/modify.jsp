<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.servlet.student"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改学生信息</title>
<style type="text/css">
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>
<script type="text/javascript">
	function check(form){
		with(form){
			if(bookCount.value == ""){
				alert("请输入更新专业！");
				return false;
			}
			return true;;
		}
	}
</script>
</head>
<body background="http://pic.58pic.com/58pic/13/66/49/06458PIC5BH_1024.jpg">
	<table align="center" width="500" border="1" height="170" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="7">
				<h2>所有学生信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>学号</b></td>
			<td><b>密码</b></td>
			<td><b>姓名</b></td>
			<td><b>性别</b></td>
			<td><b>班级</b></td>
			<td><b>专业</b></td>
			<td><b>修改专业</b></td>
		</tr>
			<%
				// 获取图书信息集合
					List<student> list = (List<student>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(student stu : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=stu.getNumber()%></td>
					<td><%=stu.getPassword()%></td>
					<td><%=stu.getUsername()%></td>
					<td><%=stu.getSex()%></td>
					<td><%=stu.getGrade()%></td>
					<td><%=stu.getMajor()%></td>
					<td>
						<form action="UpdateServlet" method="post" onsubmit="return check(this);">
							<input type="hidden" name="number" value="<%=stu.getNumber()%>">
							<input type="text" name="major" size="3">
							<input type="submit" value="修　改">
						</form>
					</td>
				</tr>
			<%

					}
				}
			%>
	</table>
	<p align="center"><a href="index.jsp">返回主页</a></p>
</body>
</html>