<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*" %>     <!-- JSP에서 JDBC의 객체를 사용하기 위해 java.sql 패키지를 import 한다 -->
<%
	// maria 전용 connector j를 깔아야지 사용가능
	Connection conn = null;    // 초기화
	ResultSet set = null;    // 결과값 초기화
	try{
		// URL, "jdbc:mysql://localhost:3306/(mySql에서 만든 DB명)" << 입력 이때 3306은 mysql기본 포트
		String url = "jdbc:mariadb://localhost:33060/test";
		String id = "root";    // SQL 사용자 이름
		String pw = "1234";    // SQL 사용자 패스워드
		
		Class.forName("org.mariadb.jdbc.Driver");	   // DB와 연동하기 위해 DriverManager에 등록한다.
		conn = DriverManager.getConnection(url,id,pw);    // DriverManager 객체로부터 Connection 객체를 얻어온다.
		
		if(conn != null) {
			out.println("mariadb Connected<br>");    // 커넥션이 제대로 연결되면 수행된다.
			conn.close();
		}
	} catch(Exception e) {    // 예외 처리
		e.printStackTrace();
		out.print(e);
	}
%>