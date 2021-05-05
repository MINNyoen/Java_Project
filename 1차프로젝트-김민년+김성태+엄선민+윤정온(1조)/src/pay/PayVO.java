package pay;

public class PayVO {

	String id; // 아이디 > 회원 가입 (임시로 "ABC"만들어 놓음)("rlatjdxo")
	String lodging_code;// 상품코드 > 상품정보
	int paycode; // 결제번호, 1부터 자동상승
	int cost;// 숙박금액(일당)
	int days;// 숙박일정
	int people;// 숙박인원
	String cardnum;// 카드넘버
	String carddate;// 카드만료기한
	String cardcvc;// 카드CVC

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLodging_code() {
		return lodging_code;
	}

	public void setLodging_code(String lodging_code) {
		this.lodging_code = lodging_code;
	}

	public int getPaycode() {
		return paycode;
	}

	
	public void setPaycode(int paycode) {
		this.paycode = paycode;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getCardnum() {
		return cardnum;
	}

	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

	public String getCarddate() {
		return carddate;
	}

	public void setCarddate(String carddate) {
		this.carddate = carddate;
	}

	public String getCardcvc() {
		return cardcvc;
	}

	public void setCardcvc(String cardcvc) {
		this.cardcvc = cardcvc;
	}

}
