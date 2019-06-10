<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
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
header {
	background-color: #6befb0;
}
h4{
	margin:0px;
}
section{
	padding-bottom:100px;
}
footer{
	position:realative;
	margin-top:-100px;
	height:100px;
	clear:both;
}
img{
	margin:5px 0px 0px 0px;
}
</style>
<meta charset="UTF-8">
<title>채소</title>
</head>
<body>
<header>
	<%@include file="/WEB-INF/views/header.jsp"%>
</header>
<section>
	<form name="vegetable" method="post">
		<div>
			<div style="float: left;">
				<div>
					<a href="product.do?prodnum=1"><img src="resources/img/onion.jpg" height="250px;" width="250px;"></a>
				</div>
				<div>무안 햇 양파 5kg</div>
				<br>
				<div>
					<b>6,900원</b>
				</div>
				<div>무료 배송📦</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<a href="product.do?prodnum=2"><img src="resources/img/greenonion.jpg" height="250px;" width="250px;"></a>
				</div>
				<div>건강한 흙에서 자란 흙 대파 1단</div>
				<br>
				<div>
					<b>1,480원</b>
				</div>
				<div>무료배송📦</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<a href="product.do?prodnum=3"><img src="resources/img/garlic.jpg" height="250px;" width="250px;"></a>
				</div>
				<div>18년 창녕 마늘 - 통마늘 1kg</div>
				<br>
				<div>
					<b>5,200원</b>
				</div>
				<div>무료배송📦</div>
			</div>
			<div style="float: left; margin-left: 50px;">
				<div>
					<a href="product.do?prodnum=4"><img src="resources/img/beansprouts.jpg" height="250px;" width="250px;"></a>
				</div>
				<div>친환경 무농약 산소 콩나물 1kg</div>
				<br>
				<div>
					<b>4,500원</b>
				</div>
				<div>무료배송📦</div>
			</div>
		</div>
		<div>
			<div style="float: left;">
				<div>
					<a href="product.do?prodnum=5"><img src="resources/img/lettuce.jpg" height="250px;" width="250px;"></a>
				</div>
				<div>지쿱 GAP인증 쌈채소 적상추 1kg</div>
				<br>
				<div>
					<b>9,720원</b>
				</div>
				<div>무료 배송📦</div>
			</div>
		</div>
	</form>
</section>
	<footer>
		<%@include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>