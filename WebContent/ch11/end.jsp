<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch11.logon.LogonDBBean" %>
<%@ page import="java.sql.Timestamp" import="java.util.ArrayList" import="ch11.logon.LogonDataBean"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<%
LogonDBBean manager = LogonDBBean.getInstance();


ArrayList<LogonDataBean> list =manager.getMember();   

for(int i=0; i<list.size(); i++){
   out.println(list.get(i).getId());
   out.println(list.get(i).getPasswd());
   out.println(list.get(i).getName());
   out.println(list.get(i).getReg_date());
   out.println(list.get(i).getAddress());
   out.println(list.get(i).getTel());
   out.println("<br>");
}
%>