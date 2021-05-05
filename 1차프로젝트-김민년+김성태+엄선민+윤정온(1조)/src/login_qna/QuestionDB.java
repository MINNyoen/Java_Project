package login_qna;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import login_qna.QuestionVO;

public class QuestionDB {
	
	public ArrayList<QuestionVO> list() throws Exception  {
	      ArrayList<QuestionVO> list = new ArrayList<>();
	      

	      Class.forName("com.mysql.jdbc.Driver");
	      String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
	      Connection con = DriverManager.getConnection(url, "root", "1234");
	      String sql = "select * from question";
	      PreparedStatement ps = con.prepareStatement(sql);
	      ResultSet rs = ps.executeQuery();
	      
	      //1. 검색결과가 있는지 체크해야한다.
	      //System.out.println(rs.next());//true이면 있다라는 얘기
	      //2. 만약에 결과가 있으면, 테이블에서 원하는 데이터항목을 꺼내주면 됨.
	      while (rs.next()) {
	         //rs.next()를 호출할 때마다 한 행씩 내려가서 그 행이 있는지를 체크: boolean
	         //있으면 true, 없으면 false
	         //true이면 각 항목의 값들을 꺼내주어야 한다.
	         //꺼내주는 방법은 2가지, 1)항목명, 2)항목의 인덱스
	    	  
			String question_id2 = rs.getString("question_id"); 
			// id2 는 위에 String id 사용해서 id2로 작성.
			String question_title = rs.getString(2);
			String question_contents = rs.getString(3);
			String question_date = rs.getString(4);
			
			QuestionVO bag = new QuestionVO();
			bag.setQuestion_id(question_id2);
			bag.setQuestion_title(question_title);
			bag.setQuestion_contents(question_contents);
			bag.setQuestion_date(question_date);

	         
	         //가방들을 넣어줄 컨테이너에 하나씩 넣어준다.
	         list.add(bag);
	      }
	      return list;
	   }
	
	public void question_create(QuestionVO bag) throws Exception {
		

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "insert into question values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, bag.getQuestion_id());
		ps.setString(2, bag.getQuestion_title());
		ps.setString(3, bag.getQuestion_contents());
		ps.setString(4, bag.getQuestion_date());
		ps.executeUpdate();
	}
	
	public void question_update(QuestionVO bag) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "update question set question_id = ?, question_contents = ?, question_date = ? where question_title = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, bag.getQuestion_id());
		ps.setString(2, bag.getQuestion_contents());
		ps.setString(3, bag.getQuestion_date());
		ps.setString(4, bag.getQuestion_title());

		ps.executeUpdate();
		// mysql로 전송

	}
	
	public void question_delete(String question_title) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "delete from question where question_title = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, question_title);
		ps.executeUpdate();
		// mysql로 전송
	}
}
