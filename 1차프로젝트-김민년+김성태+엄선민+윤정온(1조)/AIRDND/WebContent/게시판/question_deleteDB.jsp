<%@page import="login_qna.QuestionDB"%>
<%@page import="login_qna.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    String question_title = request.getParameter("title");
	
	QuestionDB db = new QuestionDB();
	db.question_delete(question_title);
	%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="0.1; url=http://localhost:8888/air/게시판/question_main.jsp">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>