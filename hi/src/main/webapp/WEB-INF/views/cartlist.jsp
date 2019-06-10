<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
h2 {
	color: grey;
}
table{
		margin-left:10px;
		display:inline-block;
	}
button.aa{
	align:right;
	width:400px;
}
</style>
<script>
	function buy(){
		alert("구매완료");
		location.href='/';
	}
</script>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<button value="메인으로" onclick="location.href='/index.do'">메인으로</button>
	<center>
		<h1>${sessionScope.name}님의장바구니 목록 입니다.</h1>
	</center>
	<c:choose>
		<c:when test="${empty list}">
			<h2>아직 장바구니에 추가하신 제품이 없습니다.</h2>
		</c:when>
		<c:otherwise>
			<div>
			<center>
			<form name="cartlist" method="post">
			<table border="1">
			<c:forEach items="${list}" var="cart">
				<tr margin="5px 5px 5px 5px">
					<td><img src="${cart.prodimg }" width="300px" height="200px"></td>
					<td colspan="6" width="900px">주소:${sessionScope.address }</td>
				</tr>
				<tr margin="5px 5px 5px 5px">
					<td><center><input type="text" id="prodname" value="${cart.prodname }" readonly></center></td>
					<td><input type="text" id="cartstock" size="10" value="${cart.cartstock}(수량)" readonly></td>
					<td>X</td>
					<td><input type="text" id="prodprice" size="10" value="${cart.prodprice}(가격)" readonly></td>
					<td>=</td>
					<td>${cart.prodprice * cart.cartstock}(총 금액)</td>
					<!-- <td><input type="button" style="float:right;" onclick="buy();" value="구매"></td> -->
				</tr>
				<div>
				</div>
				</c:forEach>
			</table>
			</form>
			</center>
			</div>
		</c:otherwise>
	</c:choose>
	</body>
</html>