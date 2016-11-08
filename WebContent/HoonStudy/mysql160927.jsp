<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>     <!-- JSP���� JDBC�� ��ü�� ����ϱ� ���� java.sql ��Ű���� import �Ѵ� -->
<%
	//DB TEST
	
	Connection conn = null;    // �ʱ�ȭ
	ResultSet set = null;    // ����� �ʱ�ȭ
	try{
		// URL, "jdbc:mysql://localhost:3306/(mySql���� ���� DB��)" << �Է� �̶� 3306�� mysql�⺻ ��Ʈ
		//String url = "jdbc:mysql://localhost:3306/test";
		//String id = "hoonhoon";    // SQL ����� �̸�
		//String pw = "wlgns";    // SQL ����� �н�����
		
		//Class.forName("com.mysql.jdbc.Driver");	   // DB�� �����ϱ� ���� DriverManager�� ����Ѵ�.
		//conn = DriverManager.getConnection(url,id,pw);    // DriverManager ��ü�κ��� Connection ��ü�� ���´�.
		
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/TestDB");
		conn = ds.getConnection();
		if(conn != null) {
			out.println("MySQL Connected<br>");    // Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.
			conn.close();
		}
	} catch(Exception e) {    // ���� ó��
		e.printStackTrace();
		out.print(e);
	}
%>