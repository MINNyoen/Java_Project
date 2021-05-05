<%@page import="login_qna.LoginDB"%>
<%@page import="login_qna.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = session.getAttribute("id").toString();
String pw = request.getParameter("pw");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");

//가방
LoginVO bag = new LoginVO();
//넣기
bag.setId(id);
bag.setPw(pw);
bag.setBirth(birth);
bag.setTel(tel);
//db부품 넣기
LoginDB db = new LoginDB();
db.member_update(bag);
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="0.5; url=http://localhost:8888/air/main.jsp">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<script>
	alert("수정이 완료되었습니다.")
</script>

</body>
</html>