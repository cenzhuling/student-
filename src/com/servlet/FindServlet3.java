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
		        // ��ǰҳ��
				int currPage = 1;
				
				// �жϴ���ҳ���Ƿ���Ч
				if(request.getParameter("page") != null){
					// �Ե�ǰҳ�븳ֵ
					currPage = Integer.parseInt(request.getParameter("page"));
				}
				// ʵ����studentDao
				studentDao dao = new studentDao();
				// ��ѯ����ѧ����Ϣ
				List<student> list = dao.find(currPage);
				// ��list���õ�request֮��
				request.setAttribute("list", list);
				// ��ҳ��
				int pages ;
				// ��ѯ�ܼ�¼��
				int count = dao.findCount();
				
				// ������ҳ��
				if(count % student.PAGE_SIZE == 0){
					// ����ҳ����ֵ
					pages = count / student.PAGE_SIZE;
				}else{
					// ����ҳ����ֵ
					pages = count / student.PAGE_SIZE + 3;
				}
				
				// ʵ����StringBuffer
				StringBuffer sb = new StringBuffer();
				// ͨ��ѭ��������ҳ��
				for(int i=1; i <= pages; i++){
					// �ж��Ƿ�Ϊ��ǰҳ
					if(i == currPage){
						// ������ҳ��
						sb.append("��" + i + "��");
					}else{
						// ������ҳ��
						sb.append("<a href='FindServlet3?page=" + i + "'>" + i + "</a>");
					}
					// ������ҳ��
					sb.append("��");
				}
				// ����ҳ�����ַ������õ�request֮��
				request.setAttribute("bar", sb.toString());
				// ת����paging.jspҳ��
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
