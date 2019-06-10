<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link rel="stylesheet" href="resources/css/table.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<meta charset="UTF-8">
<title>정보 페이지</title>
<script>
	var userPw = "${pw}";
	function check(){
		if(userPw == userinfo.pw.value){
			alert("정상적으로 처리되었습니다.")
			userinfo.action ="/delete.do"
			userinfo.submit();
		}
		else{
			alert("비밀번호를 다시 확인해 주세요");
			return false;
		}
	}
</script>
</head>
<body>
<button value="메인으로" onclick="location.href='/index.do'">메인으로</button>
	
	<form name="userinfo" method="POST">
	<center>
		<table border="1" class="type09">
		<thead>
			<th colspan="2"><center><h1>${sessionScope.name}님의 정보입니다.</h1></center></th>
		</head>
		<tbody>
			<tr>
				<th scope="row">이름</th>
				<td>${sessionScope.name}</td>
			</tr>
			<tr>
				<th scope="row">주소</th>
				<td>${sessionScope.address}</td>
			</tr>
			<tr>
				<th><h2>회원 탈퇴</h2></th>
				<td><input type="password" id="pw" name="pw" placeholder="비밀번호를 입력해주세요"></td>
			</tr>
			<tr>
				<td colspan="2"><center><input type="button" value="회원탈퇴" onclick="check()"></center></td>
			</tr>
		</tbody>
		</table>
	</form>
	</center>
</body>
</html>