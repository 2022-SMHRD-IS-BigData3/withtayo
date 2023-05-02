package com.henry.testEntity;

public class Passenger {

	private String p_id;
	private String p_pw;
	private String p_ph;
	private String np_pw;
	private String np_pw1;
	private boolean p_warning;
	public Passenger() {
		
	}
	public Passenger(String p_id, String p_pw, String p_ph, String np_pw, String np_pw1, boolean p_warning) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_ph = p_ph;
		this.np_pw = np_pw;
		this.np_pw1 = np_pw1;
		this.p_warning = p_warning;
	}
	
	
	public String getNp_pw() {
		return np_pw;
	}
	public void setNp_pw(String np_pw) {
		this.np_pw = np_pw;
	}
	public void setP_warning(boolean p_warning) {
		this.p_warning = p_warning;
	}
	public Passenger(String p_id, String np_pw) {
		this.p_id = p_id;
		this.np_pw = np_pw;
	}
	
	public Passenger(String p_pw) {
		this.p_pw = p_pw;
		
	}
	public Passenger(String p_id, String p_pw, String p_ph) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_ph = p_ph;
	}
	public String getNp_pw1() {
		return np_pw1;
	}

	public void setNp_pw1(String np_pw1) {
		this.np_pw1 = np_pw1;
	}
	public boolean isP_warning() {
		return p_warning;
	}
	

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_pw() {
		return p_pw;
	}

	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}

	public String getP_ph() {
		return p_ph;
	}

	public void setP_ph(String p_ph) {
		this.p_ph = p_ph;
	}

	@Override
	public String toString() {
		return "Passenger [p_id=" + p_id + ", p_pw=" + p_pw + ", p_ph=" + p_ph + "]";
	}
	
	
	
}
