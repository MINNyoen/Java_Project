package activity;

import java.sql.Date;

public class SearchVO {
	int activity_code ;
	String activity_name;
	String activity_img ;
	String activity_type ;
	String activity_cost ;
	String activity_personal ;
	String activity_contents ;
	String activity_location ;
	int activity_available;

	public int getactivity_code() {
		return activity_code;
	}
	public void setactivity_code(int activity_code) {
		this.activity_code = activity_code;
	}
	///////////
	public String getactivity_name() {
		return activity_name;
	}
	public void setactivity_name(String activity_name) {
		this.activity_name = activity_name;
	}
	//////////////////
	public String getactivity_img() {
		return activity_img;
	}
	public void setactivity_img(String activity_img) {
		this.activity_img = activity_img;
	}
	/////////////////
	public String getactivity_type() {
		return activity_type;
	}
	public void setactivity_type(String activity_type) {
		this.activity_type = activity_type;
	}
	///////////////
	public String getactivity_cost() {
		return activity_cost;
	}
	public void setactivity_cost(String activity_cost) {
		this.activity_cost = activity_cost;
	}
	///////////////
	public String getactivity_personal() {
		return activity_personal;
	}
	public void setactivity_personal(String activity_personal) {
		this.activity_personal = activity_personal;
	}
	//////////////
	public String getactivity_contents() {
		return activity_contents;
	}
	public void setactivity_contents(String activity_contents) {
		this.activity_contents = activity_contents;
	}
	/////////////
	public String getactivity_location() {
		return activity_location;
	}
	public void setactivity_location(String activity_location) {
		this.activity_location = activity_location;
	}
	
	public int getactivity_available() {
		return activity_available;
	}
	public void setactivity_available(int activity_available) {
		this.activity_available = activity_available;
	}
}