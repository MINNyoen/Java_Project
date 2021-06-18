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

<link rel="stylesheet" type="text/css" href="qna.css">
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
				<li><a href="http://localhost:8888/air/로그인/loginmain.jsp">로그인</a></li>
				<li><a href="http://localhost:8888/air/로그인/member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/로그인/mypage_check.jsp">Mypage</a></li>
				<li><a><%=session.getAttribute("id")%>님 환영합니다.</a></li>
				<li><a href="http://localhost:8888/air/로그인/logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>
	<div class=blank></div>
	<div class=create>
		<a href="http://localhost:8888/air/main.jsp">AirDnD</a> <br><br>
		<%
			if (session.getAttribute("id") != null) {
		%>
		<form action="question_createDB.jsp">
			<span class=idc>- 작 성 자 &nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;</span><input
				value="<%=session.getAttribute("id")%>" readonly="readonly"
				placeholder="    아이디를 입력하세요." name="question_id"> <br><br>
			<br> <span class=titlec>- 제&nbsp;&nbsp; 목
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;</span><input type="text"
				placeholder="    제목을 입력하세요." name="question_title"> <br><br>
			<br> <span class=contentsc>- 내&nbsp;&nbsp; 용 </span><br><br>
			<textarea rows="10" cols="50" name="question_contents">문의 사항을 입력해주세요.</textarea>
			<button type="submit">Go Question</button>
		</form>
	</div>


	<%
		} else {
	%>
		<script>
		alert("로그인 되어있지 않습니다.")
		history.go(-1);
	</script>

	<%
		}
	%>



</body>
</html>