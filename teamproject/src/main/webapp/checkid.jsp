<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ page import="user.userDAO" %>
<%
	request.setCharacterEncoding("UTF-8");
	String d_id = null;
	d_id = request.getParameter("d_id");
	String d_pw = null;
	d_pw = request.getParameter("d_pw");
	userDAO userdao = null;
	userdao = new userDAO();
	boolean result1 = userdao.checkuser(d_id, d_pw);
	
	if(result1 == true) {
		out.println("<script>location.href = 'productbanners.jsp' </script>");
	}else {
		out.println("<script>alert('로그인 정보가 다릅니다.'); history.back(); </script>");
	}
	
%>