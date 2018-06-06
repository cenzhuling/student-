<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/index.css">

<title>注册学生信息</title>
<script type="text/javascript">
	function check(form){
		with(form){
			if(number.value == ""){
				alert("学号不能为空");
				return false;
			}
			if(password.value == ""){
				alert("密码不能为空");
				return false;
			}
			if(username.value == ""){
				alert("姓名不能为空");
				return false;
			}
			
			return true;
		}
	}
</script>
</head>
<body bgcolor="#F0F8FF" >
<div  class="body">
  <div class="head"></div>
  <div class="foot"></div>    

</div>

   <div style="position: absolute; left: 50%;top:50%; margin-left:-220px; margin-top:-220px; ">
	  <form action="add.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>注册学生信息</h2>					
				</td>
			</tr> 
			<tr>
				<td align="right">学号：</td>
				<td><input type="text" name="number" /></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><input type="text" name="password" /></td>
			</tr>
			<tr>
				<td align="right">姓名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td align="right">性别：</td>
				<td><input type="text" name="sex" /></td>
			</tr>
			<tr>
				<td align="right">班级：</td>
				<td><input type="text" name="grade" /></td>
			</tr>
			<tr>
				<td align="right">专业：</td>
				<td><input type="text" name="major" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="注 册">
				</td>
			</tr>
		</table>
	</form>
<p align="center" ><a href="login.jsp">登录</a></td></tr></p>
<div style="position: absolute; left: 50%;top:50%; margin-left:-120px; margin-top:-120px; "></div>
</body>
</html>