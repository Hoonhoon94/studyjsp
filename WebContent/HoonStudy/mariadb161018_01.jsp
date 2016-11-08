<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*" %>     <!-- JSP���� JDBC�� ��ü�� ����ϱ� ���� java.sql ��Ű���� import �Ѵ� -->
<%
	// maria ���� connector j�� ��ƾ��� ��밡��
	Connection conn = null;    // �ʱ�ȭ
	ResultSet set = null;    // ����� �ʱ�ȭ
	try{
		// URL, "jdbc:mysql://localhost:3306/(mySql���� ���� DB��)" << �Է� �̶� 3306�� mysql�⺻ ��Ʈ
		String url = "jdbc:mariadb://localhost:33060/test";
		String id = "root";    // SQL ����� �̸�
		String pw = "1234";    // SQL ����� �н�����
		
		Class.forName("org.mariadb.jdbc.Driver");	   // DB�� �����ϱ� ���� DriverManager�� ����Ѵ�.
		conn = DriverManager.getConnection(url,id,pw);    // DriverManager ��ü�κ��� Connection ��ü�� ���´�.
		
		if(conn != null) {
			out.println("mariadb Connected<br>");    // Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.
			conn.close();
		}
	} catch(Exception e) {    // ���� ó��
		e.printStackTrace();
		out.print(e);
	}
%>