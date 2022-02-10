<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${path}/resources/css/main.css" />
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/jquery.innerfade.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />



</head>
<body>
	<div id="header"></div>
	<div class="wrapper">
		<div class="wrap">
			<div class="Event_area">
				<div class="slideshow-container">

					<div class="mySlides fade">
						<div class="numbertext"></div>
						<img src="/resources/img/1.jpg" style="width:1080px; height:400px;">
						<div class="text">Caption One</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext"></div>
						<img src="/resources/img/2.jpg" style="width:1080px; height:400px;">
						<div class="text">Caption Two</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext"></div>
						<img src="/resources/img/3.jpg" style="width:1080px; height:400px;">
						<div class="text">Caption Three</div>
					</div>

				</div>
				<br>

				<div style="text-align: center">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span>
				</div>
			</div>
		</div>

		<div class="content_area">
			<h1>물품</h1>

		</div>

	</div>
	

	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); 
}
</script>
</html>