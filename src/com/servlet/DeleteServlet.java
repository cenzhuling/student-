package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 获取学生学号
				String number = request.getParameter("number");
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
					// 删除图书信息的SQL语句
					String sql = "delete from students where number=?";
					// 获取PreparedStatement
					PreparedStatement ps = conn.prepareStatement(sql);
					// 对SQL语句中的第一个占位符赋值
					ps.setString(1, number);
					// 执行更新操作
					ps.executeUpdate();
					// 关闭PreparedStatement
					ps.close();
					// 关闭Connection
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				} 
				// 重定向到FindServlet
				response.sendRedirect("FindServlet1");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

//}
