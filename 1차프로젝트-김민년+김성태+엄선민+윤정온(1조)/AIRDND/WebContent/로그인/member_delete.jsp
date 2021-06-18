<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">

<link rel="stylesheet" type="text/css" href="login.css">
<link rel="stylesheet" type="text/css" href="style_topbar.css">
<title>member_delete</title>
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
				<li><a href="http://localhost:8888/air/게사판/question_main.jsp">QnA</a></li>
				<li><a href="loginmain.jsp">로그인</a></li>
				<li><a href="member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
				
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/게시판/question_main.jsp">QnA</a></li>
				<li><a><%=session.getAttribute("id") %>님 환영합니다.</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>
	<div class="blank"></div>
	<div class="login">
		<a href="main.jsp">AirDnD</a> 
		<form action="member_deleteDB.jsp">
			<h3>현재 로그인된 아이디를 탈퇴하고 싶다면 해당 비밀번호를 입력하세요.</h3>
			<span class="pw">PW :</span> <input type="text"
				placeholder="    패스워드를 입력하세요." name="pw"> <br>
			<button type="submit">Password Check</button>
		</form>
	</div>





</body>
</html>