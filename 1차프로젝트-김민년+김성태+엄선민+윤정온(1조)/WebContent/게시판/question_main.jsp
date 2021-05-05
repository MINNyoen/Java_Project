<%@page import="java.util.ArrayList"%>
<%@page import="login_qna.QuestionDB"%>
<%@page import="login_qna.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	QuestionDB db = new QuestionDB();
ArrayList<QuestionVO> list = db.list();
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

<link rel="stylesheet" type="text/css" href="qna.css">
<link rel="stylesheet" type="text/css" href="style_topbar.css">
<title>QnA main</title>
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
				<li><a href="http://localhost:8888/air/로그인/loginmain.jsp">로그인</a></li>
				<li><a href="http://localhost:8888/air/로그인/member_create.jsp">회원가입</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="navi">
				<li><a href="http://localhost:8888/air/로그인/mypage_check.jsp">Mypage</a></li>
				<li><a><%=session.getAttribute("id")%>님 환영합니다.</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
			<%
				}
			%>


		</div>
	</div>
	<div class=blank></div>
	<div class=que>
		<div class=ques>
			<br>
			<h2>- AirDnD QnA 게시판 -</h2>
			<div class=con>
				<br> 자주하는 질문들 <br>
				<hr>
				<br> Q : 에어비앤비 계정은 어떻게 만드나요? <br> <br> A : 아직 에어비앤비
				계정이 없는 경우, <a href=http://localhost:8888/airdnd/main.html>AirDnD.com</a>로
				이동해 오른쪽 위 회원 가입을 클릭하세요. <br>
				<hr>
				<br> Q : 예약 대금은 언제 지불하나요? <br> <br> A : 예약 시작일이 이틀
				뒤이든 두 달 뒤이든 상관없이, 에어비앤비는 체크인이 24시간 지난 후에 호스트에게 예약 대금을 지급합니다. <br>
				이를 통해 게스트와 호스트 모두 시간을 갖고 예약과 관련해 예상치 못한 부분이 없는지 확인할 수 있습니다. <br>
				<hr>
				<br> Q : 예약을 취소하면 얼마의 환불을 받을 수 있나요? <br> <br> A :
				환불금은 해당 예약에 적용되는 환불 정책과 예약 취소 시점에 따라 결정됩니다. <br> 내 예약에 적용되는 환불
				정책과 환불금은 숙박 또는체험 취소 절차를 시작하여 확인하실 수 있습니다. <br> 또한, 예약 확정 이메일을
				살펴보거나 여행 페이지로 가서 확인하려는 여행을 선택하면 내 예약에 적용되는 환불 정책을 확인할 수 있습니다. <br>
			</div>
		</div>
	</div>

	<%
		for (int i = 0; i < list.size(); i++) {
		QuestionVO bag = list.get(i);
	%>
	<div class=question>
		<div class=question1>

			<span class=qna3> <b style="font-size: 20px;"> 게시글<%=i + 1%>번째
			</b><br> <b style="font-size: 30px;">제목 : <%=bag.getQuestion_title()%><br>
			</b> <b style="font-size: 23px;">내용 :<%=bag.getQuestion_contents()%><br>
			</b><b style="font-size: 20px;">아이디 : <%=bag.getQuestion_id()%> <br>
			</b> <b style="font-size: 15px;">작성날짜 :<%=bag.getQuestion_date()%><br>
			</b> <br>
			</span>
						<%
				String title = bag.getQuestion_title();
				String contents = bag.getQuestion_contents();
			%>
			<ul class=qna1>
				<li><form action="question_update.jsp?title=<%=title %>&contents=<%=contents %>" method="post">
						<button type="submit" style="font-size: 25px;">QnA 수정</button>
					</form></li>
				<li>
					<form action="question_deleteDB.jsp?title=<%=title %>" method="post">

						<button type="submit"  style="font-size: 25px;">QnA
							삭제</button>
					</form>
				</li>
			</ul>
		</div>
	</div>
	<%
		}
	%>



	<div class=qna>
		<form class=qna2 action="question_create.jsp">
			<button>QnA 작성</button>
		</form>

	</div>
</body>
</html>