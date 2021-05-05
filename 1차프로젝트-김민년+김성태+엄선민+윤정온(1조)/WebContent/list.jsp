<%@page import="airdnd.Lodging_VO"%>
<%@page import="airdnd.Lodging_DB"%>
<%@page import="activity.SearchVO"%>
<%@page import="activity.SearchDB"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String search_keyword = request.getParameter("search_keyword");

SearchDB dd = new SearchDB();
ArrayList<SearchVO> list = dd.search_activity_read(search_keyword);

Lodging_DB db = new Lodging_DB();
ArrayList<Lodging_VO> list1 = db.list();
%>

<!DOCTYPE html>
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
<title>List</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="main.jsp">AirDnD</a>
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
			<h2>검색하신 단어와 연관된 숙소</h2>
		</div>
		<%
			if (list1.size() != 0) {

			for (int i = 0; i < list1.size(); i++) {
		%>
		<ul class="list">
			<%
				Lodging_VO bag = list1.get(i);
			%>
			<div class="list_name">
				숙소 이름:<%=bag.getName()%>
				</div>
			<div class="list_name">
				숙소 내용:<%=bag.getContents()%>
			</div>
			<div class="more">
				<a href="http://localhost:8888/air/숙소/lodging_page.jsp">see detail</a>
			</div>

			<%
				}
			%>
		</ul>
		<%
			}

		else {
		%><div class="product_fir">검색하신 상품이 없습니다.</div>
		<%
			}
		%>
	</div>

	<div class="product_all">
		<div class="product_title">
			<br>
			<hr></hr>
			<h2>검색하신 단어와 연관된 레저</h2>
		</div>
		<%
			if (list.size() != 0) {

			for (int i = 0; i < list.size(); i++) {
		%>
		<ul class="list">
			<%
				SearchVO bag = list.get(i);
			%>

			<div class="list_img">
				<img src="image/<%=bag.getactivity_img()%>">
			</div>
			<div class="list_name">
				레저 이름: <%=bag.getactivity_name()%>
				<div class="list_name">
				레저 내용:	<%=bag.getactivity_contents()%>
				</div>
				<div class="more">
					<a href="lodging?lodging_code=<%=bag.getactivity_code()%>.jsp">see
						detail</a>
				</div>

				<%
					}
				%>
			
		</ul>
		<%
			}

		else {
		%><div class="product_fir">검색하신 상품이 없습니다.</div>
		<%
			}
		%>
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