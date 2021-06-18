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
<title>회원 정보 수정</title>
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

		<%
			} else {
		%>
		<form action="member_updateDB.jsp">
			<h3> 수정하고싶은 내용을 입력해주세요.</h3>
			<span class=pwu> 패스워드 :</span> <input type="text"
				placeholder="    변경하고 싶은 패스워드를 입력하세요." name="pw"> <br>
			<br> <span class=dateu> 생년월일 :</span> <input type="text"
				placeholder="    변경하고싶은 생년월일을 입력하세요." name="birth"> <br> <br>
			<span class=telu> 전화번호 :</span> <input type="text"
				placeholder="    변경하고싶은 전화번호를 입력하세요." name="tel"> <br>
			<button type="submit">Update</button>
		</form>
	</div>



	<%
		}
	%>

</body>
</html>