<%@page import="login_qna.LoginVO"%>
<%@page import="login_qna.LoginDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
   //미리 객체를 생성해서 제공하고 있는 객체: 빌트인 객체 (내장된 객체)
String id = request.getParameter("id");
String pw = request.getParameter("pw");

LoginDB db = new LoginDB();
boolean result = db.logincheck(id, pw);
//로그인 성공을 한경우, id를 사이트내 여러 페이지에서 쓸 수 있도록 설정
//세션이 유지되는 동안 쓸 수 있도록 해야함
if (result == true) {
   session.setAttribute("id", id);

} else {
%>
<script>
	alert("로그인이 실패하였습니다.")
	history.go(-1);
</script>


<%
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="1; url=http://localhost:8888/air/main.jsp">
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
</body>
</html>