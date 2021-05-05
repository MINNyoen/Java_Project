<%@page import="airdnd.Lodging_DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//입력해서 전송된 데이터를 받아야 한다.
        String lodging_code = request.getParameter("lodging_code");
        
        //db전담하는 부품에서 db에 넣어달라고 할 예정.
        Lodging_DB db = new Lodging_DB();
        db.lodging_delete(lodging_code);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh"
	content="0.1; url=http://localhost:8888/air/main.jsp">
<title>숙소 정보 삭제</title>
</head>
<body>
숙소 정보가 삭제되었습니다.
</body>
</html>