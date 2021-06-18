<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="login_qna.QuestionDB"%>
<%@page import="login_qna.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%
Date date = new Date();
SimpleDateFormat simpledate = new SimpleDateFormat("yyyy년  mm월 dd일 aa hh시 mm분");
String question_date = simpledate.format(date);
    String question_id = request.getParameter("question_id");
    String question_title = request.getParameter("question_title");
    String question_contents = request.getParameter("question_contents");
    
    QuestionVO bag = new QuestionVO();
    

    
    bag.setQuestion_id(question_id);
    bag.setQuestion_title(question_title);
    bag.setQuestion_contents(question_contents);
    bag.setQuestion_date(question_date);

    
    QuestionDB db = new QuestionDB();
    db.question_update(bag);
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="0.1; url=http://localhost:8888/air/게시판/question_main.jsp">
<title>수정DB</title>
</head>
<body>
</body>
</html>