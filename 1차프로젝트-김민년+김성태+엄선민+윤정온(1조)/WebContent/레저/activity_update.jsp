<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>
	<h1>레저 상품 수정화면입니다</h1>
	<hr>
	<form action="activity_updateDB.jsp">
		<b style="font-size: 30px;"> 코드 : <input name="activity_code"
			style="width: 200px; height: 40px; font-size: 20px;"> <br></b>

		<b style="font-size: 30px;"> 제목 : <input name="activity_name"
			style="width: 200px; height: 40px; font-size: 20px;"> <br></b>

		<b style="font-size: 30px;">이미지 : <input name="activity_img"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
		</b> <b style="font-size: 30px;">레저 종류 : <input name="activity_type"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
		</b> <b style="font-size: 30px;">레저 가격 : <input name="activity_cost"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
		</b> <b style="font-size: 30px;">레저 인원 : <input name="activity_personal"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
		</b> <b style="font-size: 30px;" style="font-size : 20px;"> 내용 : <br>
			<textarea rows="10" cols="50" name="activity_contents"></textarea> <br></b>

		<b style="font-size: 30px;">레저 장소 : <input name="activity_location"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
			레저 a : <input name="activity_available"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
		</b> <b style="font-size: 30px;"><button>수정하기</button></b>




	</form>

</body>
</html>