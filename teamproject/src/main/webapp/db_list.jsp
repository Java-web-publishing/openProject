<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Insert title here</title>
	<style type="text/css">
	.output_wrap{
        width: 100%; height:100%;
    }
    .output_wrap h1{
        text-align:center;
    }
    .data_wrap{
        width: 100%;
    }
    .data_wrap .data_title{
        width: 100%; height:50px;
        background-color: azure;    
        display: flex; 
        align-items: center;
        justify-content: space-between;   
    }
    .data_wrap .data_title li{
        list-style: none;
        border: 1px solid black;  
        box-sizing: border-box;
        height: 100%; 
        display: flex;
        align-items: center;
        justify-content: center;
        flex: 1;     
    }
    .data_wrap .data_title li:nth-child(5){
        flex: 2;
    }
    .data_wrap .data_title li:nth-child(6){
        flex: 3;
    }
    .data_wrap .data_g{
       width: 100%; height:300px;
    }
    .data_wrap .data_value{
        width: 100%; height:10%;
        background-color: bisque;    
        display: flex; 
        justify-content: space-between;   
    }
    .data_wrap .data_value li{
        list-style: none;
        border: 1px solid black;  
        box-sizing: border-box;
        height: 100%; 
        display: flex;
        align-items: center;
        justify-content: center;
        flex: 1;
        font-size: 10px;   
        overflow: hidden;
        text-overflow : ellipsis;
        white-space : nowrap;  
    }
    .data_wrap .data_value li:nth-child(5){
        flex: 2;
    }
    .data_wrap .data_value li:nth-child(6){
        flex: 3;
    }
    </style>
	</head>
	<body>
		<div class="output_wrap">
	    <h1>출력페이지</h1>
	    <div class="data_wrap">
	        <div class="data_title">
	            <li>제목</li>
	            <li>이미지</li>
	            <li>종류</li>
	            <li>가격</li>
	            <li>설명</li>
	            <li>넘버</li>
	        </div>
	        <div class="data_g">
	                  
	        </div>
	    </div>
	    
	</div>
	</body>
</html>