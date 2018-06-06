<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>链接数据库</title>
</head>
<body>
<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://127.0.0.1:3306/test";
	String username="root";
	String password="123456";	
	Connection conn=DriverManager.getConnection(url,username,password);
	if(conn!=null){
		out.println("数据库连接成功!");
		conn.close();
	}else{
		out.println("数据库连接失败!");	
	}
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch (SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>