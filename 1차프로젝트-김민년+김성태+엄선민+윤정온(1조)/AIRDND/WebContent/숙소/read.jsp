<%@page import="airdnd.Lodging_VO"%>
<%@page import="airdnd.Lodging_DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String lodging_code = request.getParameter("lodging_code");
    
        Lodging_DB db = new Lodging_DB();
        Lodging_VO bag = db.lodging_read(lodging_code); 
        
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 검색 화면</title>
</head>
<body>
<h2>숙소 검색 결과 입니다.</h2>
<hr>

검색된 숙소 코드 : <%= bag.getCode() %><br>
검색된 숙소 이름 : <%= bag.getName() %><br>
검색된 숙소 타입 : <%= bag.getType() %><br>
검색된 숙소 가격 : <%= bag.getCost() %><br>
검색된 숙소 인원수 : <%= bag.getPersonal() %><br>
검색된 숙소 설명 : <%= bag.getContents() %><br>
검색된 숙소 장소 : <%= bag.getLocation() %><br>
검색된 숙소 침실수 : <%= bag.getRooms() %><br>
검색된 숙소 반려동물 : <%= bag.getAnimals() %><br>
검색된 숙소 예약가능 날짜 : <%= bag.getDate() %><br>
<a href=http://localhost:8888/air/main.jsp>main</a>


</body>
</html>