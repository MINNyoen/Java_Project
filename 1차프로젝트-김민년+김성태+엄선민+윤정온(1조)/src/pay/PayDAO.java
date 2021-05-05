package pay;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PayDAO {

	public void create(PayVO bag) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");// 드라이버 연결
		System.out.println("1.커넥터 사용 설정 성공. <br>");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db 연결 성공. <br>");
		String sql = "insert into pay values (?,?,?,?,?,?,?,?,?)";//개수, 순서 확인(총 9개)
		PreparedStatement ps = con.prepareStatement(sql);
		// ps.setInt(1, 0); // 1. 결제번호는 자동증감> 자동생성> null
		ps.setString(1, bag.getId());// id > 세션받아 가기
		ps.setString(2, bag.getLodging_code());// 숙소코드lodging_code
		ps.setInt(3, bag.getCost());//cost);
		ps.setInt(4, bag.getDays());//			
		ps.setInt(5, bag.getPeople());
		ps.setString(6, bag.getCardnum());
		ps.setString(7, bag.getCarddate());
		ps.setString(8, bag.getCardcvc());
		ps.setInt(9, bag.getPaycode());

		System.out.println("3. sql문 생성 완료 <br>");

		ps.executeUpdate();
		System.out.println("4. sql문을 mysql로 보내기 성공. <br>");

	}

	public PayVO read(String id) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");// 드라이버 연결
		System.out.println("1.커넥터 사용 설정 성공. <br>");
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. db 연결 성공. <br>");
		String sql = "select * from pay where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		System.out.println("3. sql문 생성 완료 <br>");
		ResultSet rs = ps.executeQuery();
		PayVO bag = new PayVO();
		if (rs.next()) {

			String paycode2 = rs.getString("paycode");
			int paycode22 = Integer.parseInt(paycode2);
			String id2 = rs.getString("ID");
			String lodging_code2 = rs.getString("lodging_code");
			int cost = rs.getInt(4);
			int days = rs.getInt(5);
			int people = rs.getInt(6);
			String cardnum = rs.getString(7);
			String carddate = rs.getString(8);
			String cardcvc = rs.getString(9);

			bag.setPaycode(paycode22);
			bag.setId(id2);
			bag.setLodging_code(lodging_code2);
			bag.setCost(cost);
			bag.setDays(days);
			bag.setPeople(people);
			bag.setCardnum(cardnum);
			bag.setCarddate(carddate);
			bag.setCardcvc(cardcvc);

		}
		System.out.println("4. sql문을 mysql로 보내기 성공. <br>");
		return bag;

	}
}