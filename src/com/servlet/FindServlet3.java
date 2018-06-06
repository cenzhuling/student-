package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servlet.student;
import com.servlet.studentDao;

/**
 * Servlet implementation class FindServlet3
 */
@WebServlet("/FindServlet3")
public class FindServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		        // 当前页码
				int currPage = 1;
				
				// 判断传递页码是否有效
				if(request.getParameter("page") != null){
					// 对当前页码赋值
					currPage = Integer.parseInt(request.getParameter("page"));
				}
				// 实例化studentDao
				studentDao dao = new studentDao();
				// 查询所有学生信息
				List<student> list = dao.find(currPage);
				// 将list放置到request之中
				request.setAttribute("list", list);
				// 总页数
				int pages ;
				// 查询总记录数
				int count = dao.findCount();
				
				// 计算总页数
				if(count % student.PAGE_SIZE == 0){
					// 对总页数赋值
					pages = count / student.PAGE_SIZE;
				}else{
					// 对总页数赋值
					pages = count / student.PAGE_SIZE + 3;
				}
				
				// 实例化StringBuffer
				StringBuffer sb = new StringBuffer();
				// 通过循环构建分页条
				for(int i=1; i <= pages; i++){
					// 判断是否为当前页
					if(i == currPage){
						// 构建分页条
						sb.append("『" + i + "』");
					}else{
						// 构建分页条
						sb.append("<a href='FindServlet3?page=" + i + "'>" + i + "</a>");
					}
					// 构建分页条
					sb.append("　");
				}
				// 将分页条的字符串放置到request之中
				request.setAttribute("bar", sb.toString());
				// 转发到paging.jsp页面
				request.getRequestDispatcher("paging.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
