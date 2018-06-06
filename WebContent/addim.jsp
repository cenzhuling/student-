<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="stu" class="com.servlet.information"></jsp:useBean>
	<jsp:useBean id="encoding" class="com.servlet.CharactorEncoding"></jsp:useBean>
	<jsp:setProperty property="*" name="stu"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/test";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			
			// 添加学生信息的SQL语句
			String sql = "insert into information(author,content) values(?,?)";
			// 获取PreparedStatement
			PreparedStatement im = conn.prepareStatement(sql);
			
			
			// 对SQL语句中的第1个参数赋值
			im.setString(1, stu.getAuthor());
			System.out.println("name："+stu.getAuthor());
			// 对SQL语句中的第2个参数赋值
			im.setString(2, stu.getContent());
		
			int row = im.executeUpdate();
			
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("成功添加了 " + row + "条留言！");
			}
			// 关闭PreparedStatement，释放资源
			im.close();
			// 关闭Connection，释放资源
			conn.close();
			
			
		} catch (Exception e) {
			out.print("留言添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="addinformation.jsp">返回</a>
	<a href="index.jsp">主页面</a>
</body>
</html>
