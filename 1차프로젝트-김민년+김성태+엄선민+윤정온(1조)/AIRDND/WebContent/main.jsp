<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">

<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="style_topbar.css">
<title>main</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="http://localhost:8888/air/main.jsp">AirDnD</a>
			</div>
			<%
				if (session.getAttribute("id") == null) {
			%>
			<ul class="navi">
				<li><a href="게시판/question_main.jsp">QnA</a></li>
				<li><a href="로그인/loginmain.jsp">로그인</a></li>
				<li><a href="로그인/member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="navi">
				<li><a href="게시판/question_main.jsp">QnA</a></li>
				<li><a href="로그인/mypage_check.jsp">Mypage</a></li>
				<li><a><%=session.getAttribute("id")%>님 환영합니다.</a></li>
				<li><a href="로그인/logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>

	<div class="main">
		<div class="main_all">
			<div class="main_words">
				<h1>Go Travel With AirDnD</h1>
				<hr></hr>
				<div class="searchArea">
					<form method="post" action="list.jsp">
						<input class="search" type="search" name="search_keyword" value=""
							placeholder="가고싶은 곳을 입력하세요"> <input class="search"
							type="submit" value="검색">

					</form>

				</div>
			</div>
		</div>
	</div>
	<div class="product_all">
		<div class="product_title">
			<br>
			<hr></hr>
			<h2>실시간 인기 숙소</h2>
		</div>
		<ul class="product_fir">
			<li>
				<div class="product_img">
					<img src="image/1.JPG">
				</div>
				<div class="product_name">서울 1번</div>
				<div class="more">
					<a href="http://localhost:8888/air/숙소/lodging_page.jsp">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/2.JPG">
				</div>
				<div class="product_name">서울 2번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/3.JPG">
				</div>
				<div class="product_name">서울 3번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/4.JPG">
				</div>
				<div class="product_name">서울 4번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>

		</ul>
		<ul class="product_fir">
			<li>
				<div class="product_img">
					<img src="image/1.JPG">
				</div>
				<div class="product_name">경기 1번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/2.JPG">
				</div>
				<div class="product_name">경기 2번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/3.JPG">
				</div>
				<div class="product_name">경기 3번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/4.JPG">
				</div>
				<div class="product_name">경기 4번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>

		</ul>
	</div>
	<div class="product_all">
		<div class="product_title">
			<br>
			<hr></hr>
			<h2>실시간 레저 상품</h2>
		</div>
		<ul class="product_fir">
			<li>
				<div class="product_img">
					<img src="image/1.JPG">
				</div>
				<div class="product_name">레저 1번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/2.JPG">
				</div>
				<div class="product_name">레저 2번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/3.JPG">
				</div>
				<div class="product_name">레저 3번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/4.JPG">
				</div>
				<div class="product_name">레저 4번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>

		</ul>
		<ul class="product_fir">
			<li>
				<div class="product_img">
					<img src="image/1.JPG">
				</div>
				<div class="product_name">레저 5번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/2.JPG">
				</div>
				<div class="product_name">레저 6번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/3.JPG">
				</div>
				<div class="product_name">레저 7번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>
			<li>
				<div class="product_img">
					<img src="image/4.JPG">
				</div>
				<div class="product_name">레저 8번</div>
				<div class="more">
					<a href="">see detail</a>
				</div>
			</li>

		</ul>
	</div>
	<div class="mamuri">
		<ul class="coment">
			<li>
				<h1>연중무휴 고객지원</h1> <br>
				<hr></hr> <br>
				<h4>24시간 언제라도 AirDnD가 도와드립니다. 전세계 어디에서나 AirDnD 지원팀에 연락하여 도움을
					받으세요.</h4>
				<h4>HP) 000-0000-0000</h4>
			</li>
			<li>
				<h1>세계 최고의 호스트</h1> <br>
				<hr></hr> <br>
				<h4>깔끔하게 정돈된 침대시트에서부터 브런치 맛집 정보까지, AirDnD 호스트들은 현지인의 강점을 살린 다양한
					서비스를 제공합니다. AirDnD 호스트와 함께하세요.</h4>
			</li>
		</ul>
		<hr></hr>
		<div class="copyright">
			<h2>© 2021 Airdnd, Inc. All rights reserved</h2>
		</div>
	</div>



</body>
</html>