package ch11.logon;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	// LogonDBBean 전역 객체 생성 ← 한 개의 객체만 생성해서 공유
	private static LogonDBBean instance = new LogonDBBean();
	
	// LogonDBBean 객체를 리턴하는 메소드
	public static LogonDBBean getInstance(){
		return instance;
	}
	
	private LogonDBBean(){}
	
	// 커넥션 풀에서 커넥션 객체를 얻어내는 메소드
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/test");
		return ds.getConnection();
	}
	
	// 회원 가입 처리(registerPro.jsp)에서 사용하는 새 레코드 추가 메소드
	public void insertMember(LogonDataBean member){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement(
					"insert into member values(?,?,?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getTel());
			pstmt.executeUpdate();
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}
		}
	}
	
	// 아이디 중복 확인(confirmId.jsp)에서 아이디의 중복 여부를 확인하는 메소드
	public int confirmId(String id){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select id from member where id = ?");
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) // 아이디 중복여부
				x = 1; // 아이디 중복 있음
			else
				x = -1; //아이디 중복 없음
		} catch(Exception ex){
			ex.printStackTrace();
		} finally {
			if(rs != null) try {rs.close();} catch(SQLException ex) {}
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}
		}
		return x;
	}
	public ArrayList<LogonDataBean> getMember(){

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		LogonDataBean data = null;

		ArrayList<LogonDataBean> result = new ArrayList<LogonDataBean>();

		try{
			conn=getConnection();
			pstmt = conn.prepareStatement("select * from member");
			rs= pstmt.executeQuery();
			while(rs.next()){
				data = new LogonDataBean();

				data.setId(rs.getString("id"));
				data.setPasswd(rs.getString("passwd"));
				data.setName(rs.getString("name"));
				data.setReg_date(rs.getTimestamp("reg_date"));
				data.setAddress(rs.getString("address"));
				data.setTel(rs.getString("tel"));

	            result.add(data);  
	         }
	      }catch(Exception ex){
	         ex.printStackTrace();
	      } finally{
	         if(rs != null) try {rs.close();} catch(SQLException ex){}
	         if(pstmt != null) try { pstmt.close();} catch(SQLException ex){}
	         if(conn != null) try {conn.close();} catch(SQLException ex){}
	      }
	    return result;
   }
}
