<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>숙소 등록 화면입니다.</h2>
	<hr color="red">
 	<form action="create.jsp">
		숙소 코드 : <input name="lodging_code"><br> 
		숙소 이름 : <input name="lodging_name"><br>
		<!-- 숙소 이미지 : <input name="content"><br> -->
		숙소 타입 : <input name="lodging_type"><br>
		숙소 가격 : <input name="lodging_cost"><br>
		숙소 인원수 : <input name="lodging_personal"><br>
		숙소 설명 : <input name="lodging_contents"><br>
		숙소 장소 : <input name="lodging_location"><br>
		숙소 침실수 : <input name="lodging_rooms"><br>
		숙소 반려동물 출입 유무 : <input name="lodging_animals"><br>
		숙소 예약가능 날짜 : <input name="lodging_date"><br>
		<button>서버로 전송</button>
 	</form>
</body>
</html>