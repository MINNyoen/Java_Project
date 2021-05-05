<%@page import="pay.PayVO"%>
<%@page import="pay.PayDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	//db전담 처리class객체에게 db에 넣으라 명령 실행 
	PayDAO db = new PayDAO();
	PayVO bag = db.read(id);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 검색 결과창</title>
</head>

<body>

	<%= bag.getId() %>님의 검색된
	<%= bag.getPaycode() %>번 결제 정보
	<br>
	<br> 숙박장소:<%= bag.getLodging_code() %>
	<br> 금액:<%= bag.getCost() %>원
	<br> 숙박일:
	<%= bag.getDays() %>일
	<br> 숙박인원:
	<%= bag.getPeople() %>명의 숙박 예약이
	<br> 카드번호:<%= bag.getCardnum() %>
	<br> 카드만료기한:<%= bag.getCarddate() %>
	<br> 카드cvc:<%= bag.getCardcvc() %>
	로 진행되었습니다.
	<br>
	<a href="http://localhost:8888/air/main.jsp">main</a>

</body>
</html>