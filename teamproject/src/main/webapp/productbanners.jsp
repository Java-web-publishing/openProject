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
  	*{margin:0; padding:0;}
  	body{
  		position: absolute;
  	}
  	.wrap{
  	display:flex;
  	margin: 0 auto;
  	font-size: 25px;
  	}
	.chs{
		width: 300px;
		height: 40px;
		font-size: 25px;
		border : 1px solid black;
		display : flex;
		justify-content: center;
	}
	#dbs{
		margin : 20px;
		display : flex;
		justify-content: center;
		align-items: center;
	}
  	select {
  	width: 200px;
  	height: 30px;
  	font-size: 25px;
  	}
  	input {
  	width: 60px;
  	height: 30px;
  	font-size: 20px;
  	margin-left : 5px;
  	}
  	
  	</style>
	<title>Insert title here</title>
	</head>
	<body>
		<div class="wrap">
			<div class="tb_w">
				<div class="chs">메인 배너 변경</div>
				<div class="chs">인기 상품 변경</div>
				<div class="chs">신규 상품 변경</div>
				<div class="chs">일반 상품 변경</div>
			</div>
			
			<div id="dbs">
				
				<select id="db_select">
			        <option value="new_db">상품 추가</option>
			        <option value="change_db">상품 수정</option>
			        <option value="delete_db">상품 삭제</option>
    			</select>
    			<input id="gopage" type="submit" value="이동">
				
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#dbs").hide();
			var whichdb = 0;
			var whichop = 0;
			$(".chs").click(function(e){
				$("#dbs").show();
				whichdb = $(this).index();
				$(".chs").css({"background-color":"white"})
				$(this).css({"background-color":"orange"})
				console.log(whichdb);
			});
			$("#gopage").click(function(){
				whichop = $("#db_select option").index($("#db_select option:selected"));
				console.log(whichop);
				if(whichop == 0) {
					location.href = "db_new.jsp?whichdb=" + whichdb;
				}else if(whichop == 1) {
					location.href = "db_change.jsp?whichdb=" + whichdb;
				}else if(whichop == 2) {
					location.href = "db_delete.jsp?whichdb=" + whichdb;
				}
				
			})
		});
	</script>
</html>