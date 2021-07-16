<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.userDAO" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<title>Insert title here</title>
	</head>
	<body>
		ㅅㅅttttt
		<% userDAO userd = new userDAO();
			String nn = null;
			nn = userd.notest();
			
		%>
		<script type="text/javascript">
		console.log('<%=nn%>');
		</script>
	</body>
</html>