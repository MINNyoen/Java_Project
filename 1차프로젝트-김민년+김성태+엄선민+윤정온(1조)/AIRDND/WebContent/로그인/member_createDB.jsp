<%@page import="login_qna.LoginDB"%>
<%@page import="login_qna.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");

//가방
LoginVO bag = new LoginVO();
//넣기
bag.setId(id);
bag.setPw(pw);
bag.setName(name);
bag.setBirth(birth);
bag.setTel(tel);

LoginDB db = new LoginDB();
db.member_create(bag);
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="0.1; url=http://localhost:8888/air/main.jsp">
<meta charset="UTF-8">
<title>AirDnD 회원가입</title>
</head>
<body>
<script>
	alert("회원가입이 성공적으로 완료되었습니다. 축하드립니다!")
</script>
</body>
</html>