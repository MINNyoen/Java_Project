<%@page import="login_qna.LoginDB"%>
<%@page import="login_qna.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = session.getAttribute("id").toString();
String pw = request.getParameter("pw");

LoginDB db = new LoginDB();
boolean result = db.logincheck(id, pw);

LoginDB dd = new LoginDB();
LoginVO bag = dd.member_read(id);

if (result == true) { db.member_delete(id);


} else {
%>
<script>
alert("비밀번호가 틀렸습니다.")
history.go(-1);
</script>


<%
}
%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="0.5; url=http://localhost:8888/air/main.jsp">
<meta charset="UTF-8">
<title>회원 정보 삭제 창</title>
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
				<li><a href="http://localhost:8888/air/게시판/question_main.jsp">QnA</a></li>
				<li><a href="loginmain.jsp">로그인</a></li>
				<li><a href="member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
				
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/게시판/question_main.jsp">QnA</a></li>
				<li><a href="loginmain.jsp">Mypage</a></li>
				<li><a><%=session.getAttribute("id") %>님 환영합니다.</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>
	<% session.invalidate();%>
</html>