<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>결제화면입니다.</h2>
      <hr color="red">

       <form action="payCreate.jsp">
	결제번호: <input name="paycode"> <br> <!-- :자동증감, 결제완료 후 보여줄 정보 -->  
	아이디: <input name="id"><br>
 	상품코드 : <input name="lodging_code"><br> 

 	숙박금액: <input name="cost"><br>
 	숙박일정: <input name="days"><br>
	숙박인원: <input name="people"><br>
	카드번호: <input name="cardnum"><br>
	카드만료기간: <input name="carddate"><br>
	카드cvc: <input name="cardcvc"><br>
 
 
       <button>서버로 전송</button>
<!-- 세션 추가되어야 함 : 	String id; // 아이디: Foreign 
	String lodging_code;// 상품코드 : Foreign -->
    
       
       </form>
</body>
</html>