<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<style>
		*{margin:0;padding:0;}
		body{background-color:lavender;}
		.wrap{width : 100%; height: 100%; max-width: 800px; margin: 0 auto;  position: relative; transform: translateX(-5%);}
		.bun{width: 100%; height: 30px; line-height: 25px; display: flex; margin-bottom : 15px;}
		.bun:nth-child(1) {
		margin-top : 5%;}
		.bun:nth-child(4) {
		height: 100%;
		}
		.b1{width: 16%}
		.b2{width: 2%}
		.b3{width: 88%;};
		input{
		width: 100%;
		}
		textarea{
		width: 80%;
		}

	</style>
	<title>Insert title here</title>
	</head>
	<body>
		<div class="wrap">
			<form action="action.jsp" method="POST">
				<div class="bun"><div class="b1">상품 이름</div><div class="b2">:</div><div class="b3"><input class="test1" type="text" size="70" name="p_name"></div></div>
				<div class="bun"><div class="b1">상품 이미지 URL</div><div class="b2">:</div><div class="b3"><input type="text" size="70" name="p_imageURL"></div></div>
				<input name="whichdbs" id="whichdbs" type="hidden" value=""> <!-- 어떤 db를 건드릴지 주는값 -->
				<input name="whichact" id="whichact" type="hidden" value="b_new"> <!-- 무슨액션을줄건지 확인하는값 -->
				<div class="bun"><div class="b1">상품 분류</div><div class="b2">:</div>
					<div class="b3">
					<select id="u_gender" name="p_class">
	                	<option value="쇼파">쇼파</option>
	                	<option value="장롱">장롱</option>
	                	<option value="침대">침대</option>
	                	<option value="매트릭스">매트릭스</option>
	                	<option value="식탁">식탁</option>
	                	<option value="서랍장">서랍장</option>
	                	<option value="거실장">거실장</option>
	                	<option value="화장대">화장대</option>
	                	<option value="책상">책상</option>
	                	<option value="책장">책장</option>
	                	<option value="장식장">장식장</option>
	                	<option value="쇼파 테이블">쇼파 테이블</option>
            		</select>
            		</div>
            	</div>
            	
				<div class="bun"><div class="b1">상품 가격</div><div class="b2">:</div><div class="b3"><input name="p_price" type="text" size="70"></div></div>
				<div class="bun"><div class="b1">상품 설명</div><div class="b2">:</div><div class="b3"><textarea name="p_detail" rows="20" cols="50"></textarea></div></div>
				
				<input type="submit" value="생성">
			</form>
		</div>
	</body>
	<% request.setCharacterEncoding("UTF-8");
	String whichdb = request.getParameter("whichdb");
		%>
	<script type="text/javascript">
		console.log("134d352");
		$(document).ready(function(){
			console.log($("#whichdbs"));
			document.getElementById("whichdbs").value ="<%=whichdb%>";
			$("#u_gender").click(function(){
				console.log($("#whichdb").value);
			});
		});
	</script>
</html>