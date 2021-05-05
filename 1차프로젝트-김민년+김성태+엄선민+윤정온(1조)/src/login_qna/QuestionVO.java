package login_qna;

import java.sql.Date;

public class QuestionVO {
	String question_id;
	String question_title;
	String question_contents;
	String question_date;
	
	public String getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_contents() {
		return question_contents;
	}
	public void setQuestion_contents(String question_contents) {
		this.question_contents = question_contents;
	}
	public String getQuestion_date() {
		return question_date;
	}
	public void setQuestion_date(String question_date) {
		this.question_date = question_date;
	}
}