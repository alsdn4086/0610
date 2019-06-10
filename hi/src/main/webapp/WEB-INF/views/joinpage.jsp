<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function check(){
		if(joinpage.username.value == ""){
			joinpage.username.focus();
			alert("이름을 입력해주세요");
			return false;
		}
		else if(joinpage.userid.value == ""){
			joinpage.userid.focus();
			alert("아이디를 입력해주세요");
			return false;
		}
		else if(joinpage.userpw.value == ""){
			joinpage.userpw.focus();
			alert("비밀번호를 입력해주세요");
			return false;
		}
		else if(joinpage.useraddress.value == ""){
			joinpage.useraddress.focus();
			alert("주소를 입력해주세요");
			return false;
		}
		else{
			joinpage.action="/join.do";
			joinpage.submit();
			alert("회원가입 완료!");
		}
	}
	$(document).ready(function(){
		$("#idcheck").click(function(){
			var query = {userid : $("#userid").val()};
			
			$.ajax({
				url: "idcheck.do",
				type: "post",
				data: query,
				success : function(data){
					
					if(data == 1){
						$(".result .msg").text("사용 불가");
						$("#dis").attr("disabled","disabled");
					}else{
						$(".result .msg").text("사용 가능");
						$("#dis").removeAttr("disabled");
					}
				}
			});
		});
	});
</script>
<style>
p {
	text-align: left;
	margin: 0;
}
</style>
<link rel="stylesheet" href="resources/css/loginpage.css">
</head>
<body class="align">
	<div class="grid">
		<form name="joinpage" method="post" class="form login">
			<header class="login__header">
				<p text-align="left">
					<a href="index.do">메인으로</a>
					|
					<a href="loginpage.do">로그인</a>
				</p>
				<h3 class="login__title">JOIN</h3>
			</header>
			<div class="login__body">
				<div class="form__field">
					<input type="text" placeholder="NAME" name="username" required>
				</div>
				<div class="form__field">
					<input type="text" placeholder="ID" name="userid" id="userid" required>
				</div>
				<div class="form__field">
					<input type="password" placeholder="Password" name="userpw" required>
				</div>
				<div class="form__field">
					<input type="text" placeholder="Address" name="useraddress" required>
				</div>
				<p class="result">
				<span class="msg">아이디를 확인해주세요</span>
				</p>
			</div>
			<footer class="login__footer">
				<input type="button" id="idcheck" value="아이디 확인">
				<input type="button" id="dis" onclick="check()" disabled="disabled" value="회원가입">
			</footer>
		</form>
	</div>
</body>
</html>