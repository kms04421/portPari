<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


     <title>Document</title>
  <style >
.error_next_box{
margin-top: 9px;
font-size: 12px;
color: red;
display: none;
}
.success_next_box{
margin-top: 9px;
font-size: 12px;
color: green;
display: none;
}

</style>
  </head>
  	<div>
				
					<input type="text"  id="userid" class="int" name="userid" maxlength="50" required>
								
					<span id="ava" class=success_next_box>사용 가능한 아이디입니다</span>
					<span id="over"class="error_next_box">아이디가 중복됩니다</span>
					<span id="noo" class="error_next_box">사용할수 없는 아이디입니다 </span>
					
				</div>
<script>

$(document).ready(function(){
//아이디 기입시
alert("체크박스 체크했음!");
var idReg =/^(?=.*[a-z])[a-z0-9]{5,15}$/i;// /^(?=.*[a-z])a-z가 한번은 들어가 있는가

$("#userid").change(function() {
	var userid = $(this).val();
	alert("체크박스 체크했음!");
	if(userid != ''){
		if(!idReg.test(userid)){
			alert("아이디는 영문자 혹은 영문자와 숫자로 이루어진 5~15자여야 합니다 .");
			$("#ava").css("display","none");
			$("#over").css("display","none");
			$("#noo").css("display","block");
			$(this).focus();
			return false;
		}
	}
});


$("#userid").change(function(){
	var userid =$(this).val();
	var data = {userid:userid}
	$.ajax({
	
		type:"post"
		url:"/useridck",
		daya:data,
		success: function (result) {
			if(result != 'find'){
				$("#ava").css("display","block");
				$("#over").css("display","none");
				$("#noo").css("display","none");
			}else{
				$("#ava").css("display","none");
				$("#over").css("display","block");
				$("#noo").css("display","none");
			}
		}
	
	});
	
});
	var pwReg =/^(?=.*[a-z])(?=.*[!@#$%^&*~]){5,15}$/i;
	&("#password").change(function(){
		var password =$(this).val();
		if (!pwReg.test(password)){
			alert("비밀번호는 영문자와 숫자,특수문자(!@#$%^&*~ 중)한글자 이상으루 이루어진 5~15자여야합니다");
			$("#pwer").css("display","block");
			$(this).focus();
			return false;
		}else{
			$("#pwer").css("display","none");
		}
		
	});

});
</script>
</html>