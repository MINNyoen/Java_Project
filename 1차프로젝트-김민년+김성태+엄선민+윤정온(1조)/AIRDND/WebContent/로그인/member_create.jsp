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
<title>AirDnD_회원가입</title>
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
				<li><a href="loginmain.jsp">로그인</a></li>
			</ul>
			<%
				} else {
			}
			%>


		</div>
	</div>
	<div class=blank></div>
	<div class=create>
		<a href="http://localhost:8888/air/main.jsp">AirDnD</a> <br>
		<%
			if (session.getAttribute("id") == null) {
		%>
		<form action="member_createDB.jsp">
			<span class=idc>- I D &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span> <input type="text"
				placeholder="    아이디를 입력하세요." name="id"> <br><br>
			<span class=pwc>- P W &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span><input type="text"
				placeholder="    패스워드를 입력하세요." name="pw"> <br><br>
			<span class=namec>- 이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span><input type="text"
				placeholder="    이름을 입력하세요." name="name"> <br><br>
			<span class=birthc>- 생년월일 :</span> <input type="date"
				placeholder="    생년월일를 입력하세요." name="date"> <br><br>
			<span class=telc>- 전화번호 :</span> <input type="text"
				placeholder="    전화번호를 입력하세요." name="tel"> <br><br>
			<button type="submit">Join</button>
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