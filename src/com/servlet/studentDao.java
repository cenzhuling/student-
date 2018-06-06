package com.servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * ѧ����Ϣ���ݿ����
 * @author 
 *
 */
public class studentDao {
	/**
	 * ��ȡ���ݿ�����
	 * @return Connection����
	 */
	public Connection getConnection(){
		// ���ݿ�����
		Connection conn = null;
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
			conn = DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �������ݿ�����
		return conn;
	}
	
	/**
	 * ��ҳ��ѯ������Ʒ��Ϣ
	 * @param page ҳ��
	 * @return List<Product>
	 */
	public List<student> find(int page){
		// ����List
		List<student> list = new ArrayList<student>();
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		// ��ҳ��ѯ��SQL���
		String sql = "select * from students order by number desc limit ?,?";
		try {
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�1��������ֵ
			ps.setInt(1, (page - 1) * student.PAGE_SIZE);
			// ��SQL����еĵ�2��������ֵ
			ps.setInt(2, student.PAGE_SIZE);
			// ִ�в�ѯ����
			ResultSet rs = ps.executeQuery();
			// �������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����student
				student stu = new student();
				// ��number���Ը�ֵ
				stu.setNumber(rs.getString("number"));
				// ��password���Ը�ֵ
				stu.setPassword(rs.getString("password"));
				// ��username���Ը�ֵ
				stu.setUsername(rs.getString("username"));
				// ��sex���Ը�ֵ
				stu.setSex(rs.getString("sex"));
				// ��grade���Ը�ֵ
				stu.setGrade(rs.getString("grade"));
				// ��major���Ը�ֵ
				stu.setMajor(rs.getString("major"));
				// ��Product��ӵ�List������
				list.add(stu);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * ��ѯ�ܼ�¼��
	 * @return �ܼ�¼��
	 */
	public int findCount(){
		// �ܼ�¼��
		int count = 0;
		
		// ��ȡ���ݿ�����
		Connection conn = getConnection();
		
		// ��ѯ�ܼ�¼��SQL���
		String sql = "select count(*) from students";
		try {
			// ����Statement
			Statement stmt = conn.createStatement();
			// ��ѯ����ȡResultSet
			ResultSet rs = stmt.executeQuery(sql);
			// �������ƶ������ж��Ƿ���Ч
			if(rs.next()){
				// ���ܼ�¼����ֵ
				count = rs.getInt(1);
			}
			// �ر�ResultSet
			rs.close();
			// �ر�Connection
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �����ܼ�¼��
		return count;
	}
	
}
