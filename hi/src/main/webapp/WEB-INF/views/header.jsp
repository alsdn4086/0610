<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/navbar_techandall.css">
<link rel="stylesheet" href="resources/css/button.css">
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h6{
		color:grey;
		margin: 0px;
	}
</style>
</head>
<body>
	<header>
		<center>
			<image src="resources/img/logo.png" width="500px" height="230px"">
		<c:choose>
			<c:when test="${!empty sessionScope.id}">
				<h6>아이디를 클릭하시면 개인정보 페이지로 이동합니다.</h6>
				<h2><a href="userinfopage.do">${sessionScope.id }</a>(${sessionScope.name })님환영합니다!</h2><button onclick="location.href='/logout.do'">로그아웃ㅤ</button>
				<h4><a href="cartlist.do">${sessionScope.id } 님의장바구니</a></h4>
			</c:when>
			<c:when test="${empty sessionScope.id}">
				<table border="0">
					<tr>
						<td class="user">
							<button onclick="location.href='/loginpage.do'">로그인ㅤ</button>
						</td class="user">
						<td>
							<button onclick="location.href='/joinpage.do'">회원가입</button>
						</td>
					</tr>
				</table>
			</c:when>
		</c:choose>
		</center>
	</header>
	<nav>
		<div class="container">
			<div>
				<label class="mobile_menu" for="mobile_menu"> <span>Menu</span>
				</label> <input id="mobile_menu" type="checkbox">
				<ul class="nav">
					<li><a href="index.do"><i class="icon-home icon-large"></i></a></li>

					<li class="dropdown"><a href="">재료</a>

						<div class="fulldrop">
							<div class="column">
								<ul>
									<li><a href="#" onclick="login()"><h3>🥦채소</h3></a></li>
								</ul>
							</div>
<!-- 
							<div class="column">
								<ul>
									<li><a href="" onclick="no();"><h3>🥩정육</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="" onclick="no();"><h3>🍾양념류</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="" onclick="no();"><h3>🐟해산물</h3></a></li>
								</ul>
							</div>

							<div class="column">
								<ul>
									<li><a href="" onclick="no();"><h3>🍜면</h3></a></li>
								</ul>
							</div>

							<li class="dropdown"><a href="">밀키트</a> --- Full Drop Down Name Ends Here --

								--- Full Drop Down Contents  Starts Here--

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍚한식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍣일식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍝이탈리아식</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🥡중식</h3></a></li>
										</ul>
									</div>
									--- Full Drop Down Contents  Ends  Here--

								</div>
							<li class="dropdown"><a href="">간식</a> --- Full Drop Down Name Ends Here --

								--- Full Drop Down Contents  Starts Here--

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍫초콜릿</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍬사탕</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍪과자</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍮젤리</h3></a></li>
										</ul>
									</div>
									--- Full Drop Down Contents  Ends  Here--

								</div>
							<li class="dropdown"><a href="">음료</a> --- Full Drop Down Name Ends Here --

								--- Full Drop Down Contents  Starts Here--

								<div class="fulldrop">
									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍼 어린이용</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍵차</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🥤음료수</h3></a></li>
										</ul>
									</div>

									<div class="column">
										<ul>
											<li><a href="" onclick="no();"><h3>🍺술</h3></a></li>
										</ul>
									</div>
									--- Full Drop Down Contents  Ends  Here--

								</div> -->
	</nav>
</body>
</html>