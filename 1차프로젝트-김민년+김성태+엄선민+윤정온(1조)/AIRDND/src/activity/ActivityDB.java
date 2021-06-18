package activity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import activity.ActivityVO;
import login_qna.LoginVO;

public class ActivityDB {
		ActivityVO name = new ActivityVO();
	
	public ArrayList<ActivityVO> list() throws Exception  {
	      ArrayList<ActivityVO> list = new ArrayList<>();
	      

	      Class.forName("com.mysql.jdbc.Driver");
	      String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
	      Connection con = DriverManager.getConnection(url, "root", "1234");
	      String sql = "select * from activty";
	      PreparedStatement ps = con.prepareStatement(sql);
	      ResultSet rs = ps.executeQuery();

	      while (rs.next()) {

	    	  
			String activity_code = rs.getString("activity_code"); 
			String activity_name = rs.getString(2);
			String activity_img = rs.getString(3);
			String activity_type = rs.getString(4);
			String activity_cost = rs.getString(5);
			String activity_personal = rs.getString(6);
			String activity_contents = rs.getString(7);
			String activity_location = rs.getString(8);
			String activity_available = rs.getString(9);
			
			ActivityVO bag = new ActivityVO();
			bag.setactivity_code(activity_code);
			bag.setactivity_name(activity_name);
			bag.setactivity_img(activity_img);
			bag.setactivity_type(activity_type);
			bag.setactivity_cost(activity_cost);
			bag.setactivity_personal(activity_personal);
			bag.setactivity_contents(activity_contents);
			bag.setactivity_location(activity_location);
			bag.setactivity_available(activity_available);
			

	         
	         list.add(bag);
	      }
	      return list;
	   }
	
	public void activity_create(ActivityVO bag) throws Exception {
		

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "insert into activity values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, bag.getactivity_code());
		ps.setString(2, bag.getactivity_name());
		ps.setString(3, bag.getactivity_img());
		ps.setString(4, bag.getactivity_type());
		ps.setString(5, bag.getactivity_cost());
		ps.setString(6, bag.getactivity_personal());
		ps.setString(7, bag.getactivity_contents());
		ps.setString(8, bag.getactivity_location());
		ps.setString(9, bag.getactivity_available());
		
		ps.executeUpdate();
	}
	
	public void activity_update(ActivityVO bag) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");

		String sql = "update activity set activity_name = ?, activity_img = ?, activity_type = ?, "
				+ " activity_cost = ?  activity_personal = ?, activity_contents = ?, activity_location = ?, activity_available = ? where activity_code = ?";

		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(9, bag.getactivity_code());
		ps.setString(1, bag.getactivity_name());
		ps.setString(2, bag.getactivity_img());
		ps.setString(3, bag.getactivity_type());
		ps.setString(4, bag.getactivity_cost());
		ps.setString(5, bag.getactivity_personal());
		ps.setString(6, bag.getactivity_contents());
		ps.setString(7, bag.getactivity_location());
		ps.setString(8, bag.getactivity_available());
		
		ps.executeUpdate();


	}
	
	public void activity_delete(String activity_code) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");

		String sql = "delete from activity where activity_code = ?";

		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, activity_code);
		ps.executeUpdate();

	}
	public ActivityVO activity_read(String activity_code) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인
		String sql = "select * from login where activity_code = ?";
		// sql문 
		PreparedStatement ps = con.prepareStatement(sql);
		// sql 수용
		ps.setString(1, activity_code);
		ResultSet rs = ps.executeQuery();
		ActivityVO bag = new ActivityVO();
		if (rs.next()) {
			// 인덱스로 꺼냄
			String activity_code1 = rs.getString("activity_code");
			String activity_name = rs.getString(2);
			String activity_img = rs.getString(3);
			String activity_type = rs.getString(4);
			String activity_cost = rs.getString(5);
			String activity_personal = rs.getString(6);
			String activity_contents = rs.getString(7);
			String activity_location = rs.getString(8);
			String activity_available = rs.getString(9);
			bag.setactivity_code(activity_code1);
			bag.setactivity_name(activity_name);
			bag.setactivity_img(activity_img);
			bag.setactivity_type(activity_type);
			bag.setactivity_cost(activity_cost);
			bag.setactivity_personal(activity_personal);
			bag.setactivity_contents(activity_contents);
			bag.setactivity_location(activity_location);
			bag.setactivity_available(activity_available);

		}
		return bag;
	}
}
