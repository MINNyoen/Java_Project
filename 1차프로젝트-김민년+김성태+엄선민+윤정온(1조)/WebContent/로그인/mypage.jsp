<%@page import="login_qna.LoginDB"%>
<%@page import="login_qna.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = session.getAttribute("id").toString();
String pw = request.getParameter("pw");

LoginDB db = new LoginDB();
boolean result = db.logincheck(id, pw);

LoginDB dd = new LoginDB();
LoginVO bag = dd.member_read(id);

if (result == true) {

} else {
%>
<script>
	alert("비밀번호가 틀렸습니다.")
	history.go(-1);
</script>


<%
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">

<link rel="stylesheet" type="text/css" href="login.css">
<link rel="stylesheet" type="text/css" href="style_topbar.css">
<title>Mypage</title>
</head>

<body>
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="http://localhost:8888/air/main.jsp">AirDnD</a>
			</div>
			<%
				if (session.getAttribute("id") == null) {
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/게사판/question_main.jsp">QnA</a></li>
				<li><a href="loginmain.jsp">로그인</a></li>
				<li><a href="member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/게시판/question_main.jsp">QnA</a></li>
				<li><a><%=session.getAttribute("id")%>님 환영합니다.</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>
	<div class="blank"></div>
	<div class="mypage_list">
		<ul class=mypage_list1>
			<li><a href="member_update.jsp">회원 정보 수정</a></li>
			<li><a href="member_delete.jsp">회원 탈퇴</a></li>
			<li><a href="http://localhost:8888/air/숙소/lodging_input.jsp">숙소 등록</a></li>
			<li><a href="http://localhost:8888/air/숙소/lodging_output.jsp">숙소 삭제</a></li>
			<li><a href="http://localhost:8888/air/레저/activity_create.jsp">레저 등록</a></li>
			<li><a href="http://localhost:8888/air/레저/activity_update.jsp">레저 수정</a></li>
			<li><a href="http://localhost:8888/air/레저/activity_delete.jsp">레저 삭제</a></li>
			<li><a href="http://localhost:8888/air/결제/pay2.jsp">결제 확인</a></li>		
		</ul>
		<span>
			<hr></hr>
			<h4>회원 정보</h4>
		</span>
	</div>
	<!-- 회원 정보  -->
	<div class=mypage>
		<ul>
			<li>- 아이디 : <%=bag.getId()%></li>
			<br>
			<li>- 이 름 : <%=bag.getName()%></li>
			<br>
			<li>- 생년월일 : <%=bag.getBirth()%></li>
			<br>
			<li>- 연락처 : <%=bag.getTel()%></li>
		</ul>
	</div>
	<div class="mypage_pay">
		<span>
			<hr></hr>
			<h4>내가 예약한 숙소 정보</h4>
		</span>
	</div>
	<div class="mypage_pay">
		<span>
			<hr></hr>
			<h4>내가 예약한 레저 정보</h4>
		</span>
	</div>
	<div class="mypage_pay">
		<span>
			<hr></hr>
			<h4>게시판 문의 내역</h4>
		</span>
	</div>
	<!-- 내가 예약한 상품내역  -->
</body>
</html>