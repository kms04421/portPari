<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${path}/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>





<style>
html {
	height: 100%;
}

body {
	margin: 0;
	height: 100%;
	background: #f5f6f7;
}

#logo {
	width: 240px;
	height: 44px;
	cursor: pointer;
}

#header {
	padding-top: 62px;
	padding-bottom: 20px;
	text-align: center;
}

#wrapper {
	position: relative;
	height: 100%;
}

#content {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	width: 460px;
}

h3 {
	margin: 19px;
	font-size: 14px;
	font-weight: 700;
}

.box {
	display: block;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 14px 10px 14px;
	box-sizing: border-box;
	background: #fff;
	position: relative;
}

.int {
	display: block;
	width: 100%;
	hight: 100%;
	border: none;
	position: relative;
	background: #fff;
	font-size: 15px
}

#bir_wrap {
	display: table;
	width: 100%;
	margin: 60%:
}

#bir_yy {
	display: table-cell;
	width: 147px;
}

#bir_mm {
	display: table-cell,;
	width: 147px;
	padding-left: 20px;
}

#bir_dd {
	display: table-cell;
	width: 147px;
}

select {
	width: 100%;
	height: 29px;
	font-size: 15px;
	background: #fff
		url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100%
		50% no-repeat;
	background-size: 20px 8px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	text-align: start;
	border: none;
	cursor: default;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
}

#alertTxt {
	position: absolute;
	top: 19px;
	right: 38px;
	font-size: 12px;
	color: red;
	display: none;
}

.btn_area {
	margin: 30px;
}

.error_next_box {
	margin-top: 9px;
	font-size: 12px;
	color: red;
	display: none;
}

.success_next_box {
	margin-top: 9px;
	font-size: 12px;
	color: green;
	display: none;
}
</style>


<meta charset="UTF-8">
<title>회원가입</title>
</head>



<div id="header">

	<h1>회원가입</h1>
	<div id="wrapper">
		<div id="content">
			<div>
				<h3>
					<label for="id">아이디</label>

				</h3>
				<small>(영문자 또는 영문자/숫자 5~15자)</small>
				<div>
					<span class="box int_id"> <input type="text" id="userid"
						class="int" name="userid" maxlength="50" required>
					</span> <span id="ava" class=success_next_box>사용 가능한 아이디입니다</span> <span
						id="over" class="error_next_box">아이디가 중복됩니다</span> <span id="noo"
						class="error_next_box">사용할수 없는 아이디입니다 </span>

				</div>
				<h3>
					<label for="password">비밀번호</label>
				</h3>
				<small>(영문자 /숫자/특수문자(!@#$%^&*~중)8~20자)</small>
				<div>
					<span class="box int password"> 
					<input type="password"  id="password" class="int" maxlength="20" name="userpw"
						 required>

					</span> <span id="pwer" class="error_next_box">비밀번호 조건이 일치하지 않습니다 </span>
				</div>
				<h3>
					<label for="passwordin">비밀번호 확인</label>
				</h3>
				<div>
					<span class="box int password"> <input type="password"
						id="passwordin" class="int" maxlength="20" required>
					</span> <span id="pwerin" class="error_next_box">비밀번호가 일치 하지 않습니다</span>
				</div>
				<h3>
					<label for="name">이름</label>
				</h3>
				<span class="box int name"> <input type="text" id="name"
					class="int" maxlength="10" required>
				</span>



			</div>

			<div>
				<h3>
					<label for="yy">생년월일</label>
				</h3>

				<div id="bir_wrap">

					<!-- BIRTH_YY -->
					<div id="bir_yy">
						<span class="box"> <input type="text" id="yy" class="int"
							maxlength="4" placeholder="년(4자)">
						</span>
					</div>

					<!-- BIRTH_MM -->
					<div id="bir_mm">
						<span class="box"> <select id="mm" class="sel">
								<option>월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
						</span>
					</div>

					<!-- BIRTH_DD -->
					<div id="bir_dd">
						<span class="box"> <input type="text" id="dd" class="int"
							maxlength="2" placeholder="일">
						</span>
					</div>
				</div>
				<span class="error_next_box"></span>
			</div>
			<div>
				<h3 class="join_title">
					<label for="phoneNo">휴대전화</label>
				</h3>
				<span class="box int_mobile"> <input type="tel" id="mobile"
					class="int" maxlength="16" placeholder="전화번호 입력">
				</span> <span class="error_next_box"></span>

			</div>

			<div class="btn_area">
				<input class="btn btn-success" id ="success"data-oper='success' type="button" value="가입하기"> 
				<input class="btn btn-danger" data-oper='back' type="submit" value="뒤로가기">
			</div>

		</div>
	</div>
</div>



<script>

$(document).ready(function(){
//아이디 기입시

var idReg =/^(?=.*[a-z])[a-z0-9]{5,15}$/i;// /^(?=.*[a-z])a-z가 한번은 들어가 있는가
$("#userid").change(function(){
	console.log("아이디2 변경 했음.");
	 
	var userid =$(this).val();
	var data = {userid:userid}
	$.ajax({		
		type:"post",
		url:"/member/useridCk",
		data:data,
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
	var pwReg = /^(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*~])[a-z0-9!@#$%^&*~]{5,15}$/i;
	
	 $("#password").change(function(){
		var password =$(this).val();
		if (!pwReg.test(password)){
			
			$("#pwer").css("display","block");
			$(this).focus();
			return false;
		}else{
			$("#pwer").css("display","none");
		}
		
	}); 

	$("#passwordin").change(function () {
		
		var passwordin =$(this).val();	
	if ($('#password').val()!= $('#passwordin').val()){		
			$("#pwerin").css("display","block");
			$(this).focus();
			return false;
		}else{
			$("#pwerin").css("display","none");
		}
	
	
	});

	$("#success").on("click",function(e){
		
	
		var operation=$(this).data("oper");
	
		if(operation==='success'){
			$.ajax({
				url:'/member/signup',
				type:'POST',
				data:data,
				success:function(result){
					alert("아이디 작동했음");

				}
			});
		}
		
	});
});
</script>
</html>