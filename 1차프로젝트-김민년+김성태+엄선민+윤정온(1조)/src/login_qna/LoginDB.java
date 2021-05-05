package login_qna;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDB {
	
	public boolean logincheck(String id, String pw) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "select * from login where id = ? AND pw = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, id);
		ps.setString(2, pw);
		
		ResultSet rs = ps.executeQuery();
		
		boolean result = false;
		// rs.next = 있니??
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
	


	public void member_create(LoginVO bag) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "insert into login values(?,?,?,?,?)";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, bag.getId());
		ps.setString(2, bag.getPw());
		ps.setString(3, bag.getName());
		ps.setString(4, bag.getBirth());
		ps.setString(5, bag.getTel());
		// 1~5자리에 넣어라.
		ps.executeUpdate();
		// mysql로 전송

	}


	public void member_update(LoginVO bag) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "update login set pw = ?, birth = ?, tel = ? where id = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, bag.getPw());
		ps.setString(2, bag.getBirth());
		ps.setString(3, bag.getTel());
		ps.setString(4, bag.getId());

		// 1~5자리에 넣어라.
		ps.executeUpdate();
		// mysql로 전송

	}

	public void member_delete(String id) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "delete from login where id = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, id);
		// 1~5자리에 넣어라.
		ps.executeUpdate();
		// mysql로 전송
	}
	
	public LoginVO member_read(String id) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버를 사용한다는 말
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인해서 연결함(root, 1234)
		String sql = "select * from login where id = ?";
		// sql문 만들기
		PreparedStatement ps = con.prepareStatement(sql);
		// sql인식
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		LoginVO bag = new LoginVO();
		if (rs.next()) {
			// 꺼내주는 방법은 2가지
			// 1) 항목명, 2)항목의 인덱스
			String id2 = rs.getString("id");
			// id2 는 위에 String id 사용해서 id2로 작성.
			String pw = rs.getString(2);
			String name = rs.getString(3);
			String birth = rs.getString(4);
			String tel = rs.getString(5);
			bag.setId(id2);
			bag.setPw(pw);
			bag.setName(name);
			bag.setBirth(birth);
			bag.setTel(tel);
		}
		return bag;
	}
}
