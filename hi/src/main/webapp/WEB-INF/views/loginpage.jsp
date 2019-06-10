<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script>
	function check() {
		if (loginpage.userid.value == "") {
			loginpage.userid.focus();
			alert("아이디를 입력해주세요");
			return false;
		} else if (loginpage.userpw.value == "") {
			loginpage.userpw.focus();
			alert("비밀번호를 입력해주세요");
			return false;
		} else {
			loginpage.action = "login.do";
			loginpage.submit();
		}
	}
</script>
<style>
p {
	text-align: left;
	margin: 0;
}

h2 {
	color: red;
}
</style>
<link rel="stylesheet" href="resources/css/loginpage.css">
</head>

<body class="align">

	<div class="grid">

		<form name="loginpage" method="post" class="form login">
			<header class="login__header">
				<p text-align="left">
					<a href="index.do">메인으로</a> | <a href="joinpage.do">회원가입</a>
				</p>
				<h3 class="login__title">Login</h3>
			</header>

			<div class="login__body">

				<div class="form__field">
					<input type="text" placeholder="ID" name="userid" required>
				</div>

				<div class="form__field">
					<input type="password" placeholder="Password" name="userpw"
						required>
				</div>
				<c:if test="${msg == 'fail' }">
					<center>
						<h2>로그인 실패</h2>
					</center>
				</c:if>
			</div>
			<footer class="login__footer">
				<input type="button" onclick="check()" value="로그인">

			</footer>

		</form>

	</div>

</body>
</html>