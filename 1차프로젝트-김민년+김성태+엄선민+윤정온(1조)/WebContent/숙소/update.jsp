<%@page import="airdnd.Lodging_DB"%>
<%@page import="airdnd.Lodging_VO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String lodging_code = request.getParameter("lodging_code");
    String lodging_cost = request.getParameter("lodging_cost");
    String lodging_contents = request.getParameter("lodging_contents");
    
    Lodging_VO bag = new Lodging_VO();
    bag.setCode(lodging_code);
    bag.setCost(lodging_cost);
    bag.setContents(lodging_contents);

   	Lodging_DB db = new Lodging_DB();

    db.lodging_update(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 정보 업데이트</title>
</head>
<body>
<h2>숙소 정보 업데이트 완료</h2><br>
<%= lodging_code %>의 숙소정보의 가격과 설명이 각 가격은 <%= lodging_cost %>원, 설명은 <%= lodging_contents %>(으)로 변동되었습니다. 
</body>
</html>