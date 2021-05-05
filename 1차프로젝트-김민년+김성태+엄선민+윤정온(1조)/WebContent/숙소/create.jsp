<%@page import="airdnd.Lodging_VO"%>
<%@page import="airdnd.Lodging_DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	
		String lodging_code = request.getParameter("lodging_code");
		String lodging_name = request.getParameter("lodging_name");
		String lodging_type = request.getParameter("lodging_type");
		String lodging_cost = request.getParameter("lodging_cost");
		String lodging_personal = request.getParameter("lodging_personal");
		String lodging_contents = request.getParameter("lodging_contents");
		String lodging_location = request.getParameter("lodging_location");
		String lodging_rooms = request.getParameter("lodging_rooms");
		String lodging_animals = request.getParameter("lodging_animals");
		String lodging_date = request.getParameter("lodging_date");
		
		
		Lodging_VO bag = new Lodging_VO();
		
		bag.setCode(lodging_code);
		bag.setName(lodging_name);
		bag.setType(lodging_type);
		bag.setCost(lodging_cost);
		bag.setPersonal(lodging_personal);
		bag.setContents(lodging_contents);
		bag.setLocation(lodging_location);
		bag.setRooms(lodging_rooms);
		bag.setAnimals(lodging_animals);
		bag.setDate(lodging_date);
			
		Lodging_DB db = new Lodging_DB();
		
		db.lodging_create(bag);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh"
	content="0.1; url=http://localhost:8888/air/main.jsp">
<title>숙소 정보 등록</title>
</head>
<body>
<h3>숙소 정보 등록 완료</h3>
</body>
</html>