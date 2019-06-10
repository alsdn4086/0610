<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function check(){
		if(join.id.value == ""){
			join.id.focus();
			alert("아이디를 입력해주세요");
			return false;
		}
		else if(join.pw.value == ""){
			join.pw.focus();
			alert("비밀번호를 입력해주세요");
			return false;
		}
		else{
			alert("로그인 완료!");
			return login.do;
		}
	}
	function no(){
		alert("준비중입니다!");
		return false;
	}
	function login(){
		if(${sessionScope.id== null }){
			alert("로그인 후 이용하실 수 있습니다.");
			return location.href='loginpage.do';
		}
		else{
			return location.href='vegetablepage.do';
		}
	}
</script>
<style>
a {
	text-decoration: none;
}

section {
	height: 100%;
	margin: 0px;
}

td.user {
	text-align: right;
}

header {
	background-color: #6befb0;
	height: 100%;
}

h1 {
	color: white;
	height: 100%;
}

footer {
	background-color: #6befb0;
	margin: 0px;
	height: 100%;
}

h2 {
	margin: 0%;
}
</style>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<meta charset="UTF-8">
<title>TASTY_STORE</title>
<head>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/header.jsp"%>
	</header>
	<section>
		<img src="resources/img/vege1.jpg" width="100%" height="540px"
			margin="0px">
	</section>
	<footer>
		<%@include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>