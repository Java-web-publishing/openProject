<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.userDAO" %>
<%
	request.setCharacterEncoding("UTF-8");
	String whichdbs = null;
	whichdbs = (String) request.getParameter("whichdbs");
	String whichact = null;
	whichact = (String) request.getParameter("whichact");
	userDAO userdao = null;
	userdao = new userDAO();
	
	
	if(whichact == "b_new" || whichact.equals("b_new")) {	
		String p_name = null;
		p_name = request.getParameter("p_name");
		String p_imageURL = null;
		p_imageURL = request.getParameter("p_imageURL");
		String p_class = null;
		p_class = request.getParameter("p_class");
		String p_price = null;
		p_price = request.getParameter("p_price");
		String p_detail = null;
		p_detail = request.getParameter("p_detail");
		int result1 = userdao.db_new(whichdbs, p_name, p_imageURL, p_class, p_price, p_detail);
		if(result1 == 1) {
			out.println("<script>alert('상품 추가'); location.href = 'productbanners.jsp' </script>");
		}else {
			out.println("<script>alert('상품 추가 실패'); history.back(); </script>");
		}
		
	}
	if(whichact == "b_change" || whichact.equals("b_change")) {	
		String p_name = null;
		p_name = request.getParameter("p_name");
		String p_imageURL = null;
		p_imageURL = request.getParameter("p_imageURL");
		String p_class = null;
		p_class = request.getParameter("p_class");
		String p_price = null;
		p_price = request.getParameter("p_price");
		String p_detail = null;
		p_detail = request.getParameter("p_detail");
		String p_number = null;
		p_detail = request.getParameter("p_number");
		int result1 = userdao.db_change(whichdbs, p_name, p_imageURL, p_class, p_price, p_detail, p_number);
		if(result1 == 1) {
			out.println("<script>alert('상품 수정'); location.href = 'productbanners.jsp' </script>");
		}else {
			out.println("<script>alert('상품 수정 실패'); history.back(); </script>");
		}
		
	}
	if(whichact == "b_delete" || whichact.equals("b_delete")) {	
		String p_number = null;
		p_number = request.getParameter("p_number");
		int result1 = userdao.db_delete(whichdbs, p_number);
		if(result1 == 1) {
			out.println("<script>alert('상품 제거'); location.href = 'productbanners.jsp' </script>");
		}else {
			out.println("<script>alert('상품 제거 실패'); history.back(); </script>");
		}
		
	}
	out.println("<script>alert('서순'); history.back(); </script>");
	
%>