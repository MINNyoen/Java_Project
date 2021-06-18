<%@page import="activity.ActivityVO"%>
<%@page import="activity.ActivityDB"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%

String activity_code = request.getParameter("activity_code");
String activity_name = request.getParameter("activity_name");
String activity_img = request.getParameter("activity_img");
String activity_type = request.getParameter("activity_type");
String activity_cost = request.getParameter("activity_cost");
String activity_personal = request.getParameter("activity_personal");
String activity_contents = request.getParameter("activity_contents");
String activity_location = request.getParameter("activity_location");
String activity_available = request.getParameter("activity_available");

ActivityVO bag = new ActivityVO();

bag.setactivity_code(activity_code);
bag.setactivity_name(activity_name);
bag.setactivity_img(activity_img);
bag.setactivity_type(activity_type);
bag.setactivity_cost(activity_cost);
bag.setactivity_personal(activity_personal);
bag.setactivity_contents(activity_contents);
bag.setactivity_location(activity_location);
bag.setactivity_available(activity_available);

ActivityDB db = new ActivityDB();
db.activity_update(bag);
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레저 상품 수정 페이지</title>
</head>
<body bgcolor="pink">
	<h1>레저 상품 수정</h1>
	<b style="font-size: 30px;">수정이 완료되었습니다.</b>
	<br>
	<a href=http://localhost:8888/air/main.jsp style="font-size: 30px;">메인으로 돌아가기</a>
</body>
</html>