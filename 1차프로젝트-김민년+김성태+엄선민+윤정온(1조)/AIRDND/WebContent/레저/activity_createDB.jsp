<%@page import="java.sql.Date"%>
<%@page import="activity.ActivityDB"%>
<%@page import="activity.ActivityVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
db.activity_create(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레저</title>
</head>

<body>
	<b style="font-size: 30px;">레저 등록이 완료되었습니다.</b>
	<br>

	<a href=http://localhost:8888/air/main.jsp style="font-size: 30px;">메인으로 돌아가기</a>

</body>
</html>