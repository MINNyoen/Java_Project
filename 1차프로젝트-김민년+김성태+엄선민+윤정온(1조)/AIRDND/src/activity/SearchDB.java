package activity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SearchDB {
	
	SearchVO name = new SearchVO();

	public int getnext() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "select activity_code from order by activity_code desc";
		PreparedStatement ps = con.prepareStatement(sql);

		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			return rs.getInt(1) + 1;

		}
		return 1;

	}
	
	public boolean nextpage(int pagenumber) throws Exception {



		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "Select * from activity where activity_code < ? and activity_available = 1 order by activity_code desc limt 8";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, getnext() - (pagenumber - 1) * 8);
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			return true;

		} else {
			return false;
		}

	}

	public ArrayList<SearchVO> getlist(int pagenumber, String search_keyword) throws Exception {

		ArrayList<SearchVO> list = new ArrayList<>();

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "select * from activity where activity_code < ? and activity_name  limit 8";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, getnext() - (pagenumber - 1) * 8);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			int activity_code = rs.getInt(1);
			String activity_name = rs.getString(2);
			String activity_img = rs.getString(3);
			String activity_type = rs.getString(4);
			String activity_cost = rs.getString(5);
			String activity_personal = rs.getString(6);
			String activity_contents = rs.getString(7);
			String activity_location = rs.getString(8);
			int activity_available = rs.getInt(9);

			SearchVO bag = new SearchVO();
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

	public ArrayList<SearchVO> search_activity_read(String search_keyword) throws Exception {

		ArrayList<SearchVO> list = new ArrayList<>();

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "select * from activity where activity_name like '%" + search_keyword + "%'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			int activity_code = rs.getInt(1);
			String activity_name = rs.getString(2);
			String activity_img = rs.getString(3);
			String activity_type = rs.getString(4);
			String activity_cost = rs.getString(5);
			String activity_personal = rs.getString(6);
			String activity_contents = rs.getString(7);
			String activity_location = rs.getString(8);
			int activity_available = rs.getInt(9);

			SearchVO bag = new SearchVO();
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


	
}
