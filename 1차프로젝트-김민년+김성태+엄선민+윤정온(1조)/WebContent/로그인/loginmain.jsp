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
<title>AirDnD_Login</title>
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
				<li><a href="http://localhost:8888/air/게시판/question_main.jsp">QnA</a></li>
				<li><a href="member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
			}
			%>


		</div>
	</div>
	<div class=blank></div>
	<div class=login>
		<a href="http://localhost:8888/air/main.jsp">AirDnD</a> <br>
		<%
			if (session.getAttribute("id") == null) {
		%>
		<form action="logincheck.jsp">
			<span class=id>I D :</span> <input type="text"
				placeholder="    아이디를 입력하세요." name="id"> <br> <br>
			<span class=pw>PW :</span> <input type="text"
				placeholder="    패스워드를 입력하세요." name="pw"> <br>
			<button type="submit">LOGIN</button>
		</form>
	</div>


	<%
		} else {
	%>

	<%
		}
	%>



</body>
</html>