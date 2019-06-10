<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function test(){
			alert(aaaa.a.value);
			
		}
	</script>
<meta charset="UTF-8">
<link href="resources/css/button.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<form name="aaaa" method="post">
	<table border="1">
		<tr>
			<td><input type="text" id="a" value="AAAAAAAAAA" readonly></td>
			<td><input type="button" value="값 확인" onclick="test()"></td>
		</tr>
	</table>
	</form>
</body>
</html>