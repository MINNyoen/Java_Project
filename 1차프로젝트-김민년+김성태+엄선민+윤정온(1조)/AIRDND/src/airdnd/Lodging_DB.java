package airdnd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class Lodging_DB {
		Lodging_VO name = new Lodging_VO();
	
	public ArrayList<Lodging_VO> list() throws Exception  {
	      ArrayList<Lodging_VO> list = new ArrayList<>();
	      

	      Class.forName("com.mysql.jdbc.Driver");
	      String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
	      Connection con = DriverManager.getConnection(url, "root", "1234");
	      String sql = "select * from lodging";
	      PreparedStatement ps = con.prepareStatement(sql);
	      ResultSet rs = ps.executeQuery();

	      while (rs.next()) {
	    	  Lodging_VO bag = new Lodging_VO();
	    	  
				String lodging_code1 = rs.getString(1);
				String lodging_name = rs.getString(2);
				String lodging_type = rs.getString(3);
				String lodging_cost = rs.getString(4);
				String lodging_personal = rs.getString(5);
				String lodging_contents = rs.getString(6);
				String lodging_location = rs.getString(7);
				String lodging_rooms = rs.getString(8);
				String lodging_animals = rs.getString(9);
				String lodging_date = rs.getString(10);
				
				bag.setCode(lodging_code1);
				bag.setName(lodging_name);
				bag.setType(lodging_type);
				bag.setCost(lodging_cost);
				bag.setPersonal(lodging_personal);
				bag.setContents(lodging_contents);
				bag.setLocation(lodging_location);
				bag.setRooms(lodging_rooms);
				bag.setAnimals(lodging_animals);
				bag.setDate(lodging_date);
			

	         
	         list.add(bag);
	      }
	      return list;
	   }
	
	public void lodging_create(Lodging_VO bag) throws Exception {
		

		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "insert into lodging values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, bag.getCode());
		ps.setString(2, bag.getName());
		ps.setString(3, bag.getType());
		ps.setString(4, bag.getCost());
		ps.setString(5, bag.getPersonal());
		ps.setString(6, bag.getContents());
		ps.setString(7, bag.getLocation());
		ps.setString(8, bag.getRooms());
		ps.setString(9, bag.getAnimals());
		ps.setString(10, bag.getDate());
		
		ps.executeUpdate();
	}
	
	public void lodging_update(Lodging_VO bag) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");

		String sql = "update lodging set lodging_name = ?, lodging_type = ?, lodging_cost = ?,"
				+ "  lodging_personal = ?, lodging_contents = ?, lodging_location = ?, lodging_rooms = ?, lodging_animals = ?, lodging_date = ?, where lodging_code = ?";

		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, bag.getCode());
		ps.setString(2, bag.getName());
		ps.setString(3, bag.getType());
		ps.setString(4, bag.getCost());
		ps.setString(5, bag.getPersonal());
		ps.setString(6, bag.getContents());
		ps.setString(7, bag.getLocation());
		ps.setString(8, bag.getRooms());
		ps.setString(9, bag.getAnimals());
		ps.setString(10, bag.getDate());
		ps.executeUpdate();


	}
	
	public void lodging_delete(String lodging_code) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");

		String sql = "delete from lodging where lodging_code = ?";

		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, lodging_code);
		ps.executeUpdate();

	}
	public Lodging_VO lodging_read(String lodging_code) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		// mysql 서버 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// mysql에 로그인
		String sql = "select * from lodging where lodging_code = ?";
		// sql문 
		PreparedStatement ps = con.prepareStatement(sql);
		// sql 수용
		ps.setString(1, lodging_code);
		ResultSet rs = ps.executeQuery();
		Lodging_VO bag = new Lodging_VO();
		if (rs.next()) {
			// 인덱스로 꺼냄
			String lodging_code1 = rs.getString(1);
			String lodging_name = rs.getString(2);
			String lodging_type = rs.getString(3);
			String lodging_cost = rs.getString(4);
			String lodging_personal = rs.getString(5);
			String lodging_contents = rs.getString(6);
			String lodging_location = rs.getString(7);
			String lodging_rooms = rs.getString(8);
			String lodging_animals = rs.getString(9);
			String lodging_date = rs.getString(10);
			bag.setCode(lodging_code1);
			bag.setName(lodging_name);
			bag.setType(lodging_type);
			bag.setCost(lodging_cost);
			bag.setPersonal(lodging_personal);
			bag.setContents(lodging_contents);
			bag.setLocation(lodging_location);
			bag.setRooms(lodging_rooms);
			bag.setAnimals(lodging_animals);
			bag.setDate(lodging_date);

		}
		return bag;
	}
}
