<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 정보 업데이트</title>
</head>
<body>
	<h2>숙소 정보 업데이트 화면입니다.</h2>
	<hr color="red">
	<form action="update.jsp">
		숙소 코드 : <input name="lodging_code"><br> 
		숙소 가격 : <input name="lodging_cost"><br>
		숙소 설명 : <input name="lodging_contents"><br>
		<button>서버로 전송</button>
	</form>
</body>
</html>