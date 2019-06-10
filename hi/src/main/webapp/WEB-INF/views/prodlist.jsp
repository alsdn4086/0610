<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<link rel="stylesheet" href="resources/css/table2.css">
<link rel="stylesheet" href="resources/css/button.css">
<script>
	function buy(){
		alert("바로구매 성공");
		location.href="/";
	}
	$(document).ready(function(){
		$("#addcart_btn").click(function(){
			var prodnum = parseInt($("#prodnum").val());
			var cartstock = $("#cartstock").val();
			
			var data = {
					prodnum : prodnum,
					cartstock : cartstock
					};
			
			$.ajax({
				url : "addcart.do",
				type : "post",
				data : data,
				success : function(){
					alert("카트담기성공");
					$("#cartstock").val("1");
				},
				error : function(){
					alert("카트 담기 실패");
				}
			});
		});
	})
</script>
<meta charset="UTF-8">
<title>상품 정보</title>
</head>
<body>
	<div>
	<button onclick="history.back(-1);">뒤로가기</button>
	<center>
	<form name="prodlist" method="post">
		<table border="1" class="type10">
			<tr>
				<th colspan="2">상품명</th>
			</tr>
			<tr>
				<td colspan="2">${list.prodname }</td>
			</tr>
			<tr>
				<th>상품번호</th>
				<th>상품의 카테고리 번호</th>
			</tr>
			<tr>
				<td>${list.prodnum }</td>
				<td>${list.catecode }</td>
			</tr>
			<input type="hidden" id="prodnum" value="${list.prodnum }">
			<tr>
				<td colspan="2"><img src="${list.prodimg }" width="500px" height="500px"></td>
			</tr>
			<tr>
					<td colspan="2">${list.prodprice }원</td>
			</tr>
			<tr>
				<td><input type="number" min="1" max="100" id="cartstock" placeholder="수량"></td>
				<td><center><input type="button" value="장바구니 담기" id="addcart_btn"></center></td>
				<!-- <td><input type="button" value="바로구매" onclick="buy();"></td> -->
			</tr>
		</table>
	</form>
	</center>
	</div>
</body>
</html>


