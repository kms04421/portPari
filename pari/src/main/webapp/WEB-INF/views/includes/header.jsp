<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>

<link rel="stylesheet" href="${path}/resources/css/main.css"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>

<body>
	<div class="top_gnb_area">
		<div class="login">
			<a href="/board/">로그인</a> <a href="/member/signup">회원가입</a>
			</div>
		<div class="jop">		
		</div>			
	</div>
			
	<div class="top_area">
		<div class="mypage_area">
		 <div class= " mypage">
			<button type="button" class="btm_image" id="img_btn">
			 <img src="/resources/img/mypage.png" width="50" height="50" ></button>
		</div>
	</div>
		
		<div class="logo">
			<div class="logo_area">
				<img src="/resources/img/pari.png"width="50" height="50" >
			</div>
			</div>
		<div class="cate_area">
			<div class="cate">
			<button type="button" class="btm_image" id="img_btn">
			 <img src="/resources/img/memu.png" width="50" height="50" ></button>
			 
			</div>
		</div>
		
			<div class="search_box">
			<button type="button" class="btn" style="float:right;">검색</button>
			<span class="search_area"> 

			<input type="text" id="id" class="int1" maxlength="20">
			
			</span>
			
			</div>
			
			<div class="clearfix">
			<h1> </h1></div>			
		</div>
</body>
</html>