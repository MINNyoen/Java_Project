<%@page import="activity.ActivityDB"%>
<%@page import="activity.ActivityVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String activity_code = request.getParameter("activity_code");

ActivityDB db = new ActivityDB();
ActivityVO bag = db.activity_read(activity_code);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품내역</title>
</head>
<body>
	<h1>
		<b style="font-size: 30px;">상품 검색</b>
	</h1>
	<hr>
	<b style="font-size: 30px;">상품입니다.</b>
	<hr color="blue">
	<!-- 표현식, expression (실행결과) -->
	<b style="font-size: 30px;">레저 코드 :<%=bag.getactivity_code()%></b>
	<br>
	<b style="font-size: 30px;">이름 :<%=bag.getactivity_name()%></b>
	<br>
	<b style="font-size: 30px;">사진 :<%=bag.getactivity_img()%></b>
	<br>
	<b style="font-size: 30px;">레저 종류 :<%=bag.getactivity_type()%></b>
	<br>
	<b style="font-size: 30px;">가격 :<%=bag.getactivity_cost()%></b>
	<br>
	<b style="font-size: 30px;">인원 수 :<%=bag.getactivity_personal()%></b>
	<br>
		<b style="font-size: 30px;">설명 :<%=bag.getactivity_contents()%></b>
	<br>
		<b style="font-size: 30px;">장소 :<%=bag.getactivity_location()%></b>
	<br>
	<a href=http://localhost:8888/air/main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>