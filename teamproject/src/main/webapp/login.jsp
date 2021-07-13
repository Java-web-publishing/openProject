<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<style type="text/css">
  	*{margin:0;padding:0;}
  	.wrap{
  	margin:0 auto;
  	padding : 0 auto;
  	}
  	</style>
	<title>Insert title here</title>
	</head>
	<body>
	<div class="wrap">
		<form action="checkid.jsp">
			아이디<input type="text" name="d_id" id="user_id">
			비밀번호<input type="password" name="d_pw" id="user_pw">
			<input type="submit" value="로그인">
		</form>
	</div>
	
	</body>
	<script type="text/javascript">
	
	</script>
</html>