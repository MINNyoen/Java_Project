<%@page import="pay.PayDAO"%>
<%@page import="pay.PayVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 세션잡는 것은 지울부분임.! -->
	
	<%-- String lodging_code = request.getParameter("lodging_code"); --%>
	 <% 
	 	String lodging_code = "S_jongno1234"; 
	 %>
	  
	  
<%
	String paycode = "0";
	int paycode1 = Integer.parseInt(paycode);
	String cost = request.getParameter("cost");//금액 str> int로
	int cost1 = Integer.parseInt(cost);
	String days = request.getParameter("days");//숙박일정 str> int
	int days1 = Integer.parseInt(days);
	String people = request.getParameter("people");//숙박인원수 str> int
	int people1 = Integer.parseInt(people);
	String cardnum = request.getParameter("cardnum");//카드넘버
	String carddate = request.getParameter("carddate");
	String cardcvc = request.getParameter("cardcvc"); 


PayVO bag = new PayVO();
bag.setPaycode(paycode1);
bag.setDays(days1);
bag.setCost(cost1);
bag.setPeople(people1);
bag.setCardnum(cardnum);
bag.setCarddate(carddate);
bag.setCardcvc(cardcvc);
bag.setId(session.getAttribute("id") + "");
bag.setLodging_code(lodging_code);

PayDAO db = new PayDAO();
db.create(bag);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제가 완료되었습니다</title>
</head>

<body>
	결제가 완료되었습니다. 이용해주셔서 감사합니다.<br>
	<br> 결제번호: <%= paycode1 %>
	<br> 금액:
	<%= cost1 %>
	원
	<br> 숙박일:
	<%= days1 %>
	일
	<br> 숙박인원:
	<%= people1 %>
	명의 숙박 예약이
	<br> 카드번호:
	<%= cardnum %>
	<br> 카드만료기한:
	<%= carddate %>
	<br> 카드cvc:
	<%= cardcvc %>
	로 진행되었습니다.
	<br>
	<a href = "http://localhost:8888/air/main.jsp">메인으로</a>

</body>
</html>