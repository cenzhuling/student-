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
		// ��ȡѧ��ѧ��
				String number = request.getParameter("number");
				try {
					// �������ݿ�������ע�ᵽ����������
					Class.forName("com.mysql.jdbc.Driver");
					// ���ݿ������ַ���
					String url = "jdbc:mysql://localhost:3306/test";
					// ���ݿ��û���
					String username = "root";
					// ���ݿ�����
					String password = "123456";
					// ����Connection����
					Connection conn = DriverManager.getConnection(url,username,password);
					// ɾ��ͼ����Ϣ��SQL���
					String sql = "delete from students where number=?";
					// ��ȡPreparedStatement
					PreparedStatement ps = conn.prepareStatement(sql);
					// ��SQL����еĵ�һ��ռλ����ֵ
					ps.setString(1, number);
					// ִ�и��²���
					ps.executeUpdate();
					// �ر�PreparedStatement
					ps.close();
					// �ر�Connection
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				} 
				// �ض���FindServlet
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
