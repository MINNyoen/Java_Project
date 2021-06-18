<%@page import="activity.ActivityDB"%>
<%@page import="activity.ActivityVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String activity_code = request.getParameter("activity_code");

ActivityDB db = new ActivityDB();
db.activity_delete(activity_code);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레저 상품 삭제</title>
</head>
<body>
	<b style="font-size: 30px;">레저 상품 삭제가 성공적으로 되었습니다.</b>
	<a href=http://localhost:8888/air/main.jsp style="font-size: 30px;">메인으로 돌아가기</a>
</body>
</html>