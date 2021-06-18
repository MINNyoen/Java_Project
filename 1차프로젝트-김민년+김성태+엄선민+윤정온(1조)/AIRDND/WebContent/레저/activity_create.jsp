<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Activity</title>
</head>
<meta charset="UTF-8">

<body>
	<h1>Activity</h1>
	<hr>
	<form action="activity_createDB.jsp">
		<b style= "font-size:30px;">코드: </b><input name="activity_code"
			style="width: 200px; height: 40px; font-size: 20px;"><br>


			레저 이름 : <input name="activity_name"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>

			레저 이미지 : <input name="activity_img"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>

			레저 종류 : <input name="activity_type"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>

			레저 가격 : <input name="activity_cost"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>

			레저 인원 : <input name="activity_personal"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>

			내용 : <br> <textarea rows="10" cols="50" name="activity_contents"
				style="font-size: 20px;"></textarea> <br> 
				
			주소 : <input name="activity_location" style="width: 200px; height: 40px; font-size: 20px;"> <br>
			
			<input name="activity_available" style="width: 200px; height: 40px; font-size: 20px;"> <br>
			
			<!-- 날짜 : <input type="date" name="question_date"
			style="width: 200px; height: 40px; font-size: 20px;"></b> <br>-->


		<b style="font-size: 30px;"><button>등록하기</button></b>
	</form>

</body>
</html>