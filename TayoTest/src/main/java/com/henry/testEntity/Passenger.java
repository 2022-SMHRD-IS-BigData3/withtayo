package com.henry.testEntity;

public class Passenger {

	private String p_id;
	private String p_pw;
	private String p_ph;
	private String new_pw;
	private boolean p_warning;
	
	public Passenger() {
		
	}
	
	public Passenger(String p_id, String p_pw, String p_ph, String new_pw, boolean p_warning) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_ph = p_ph;
		this.new_pw = new_pw;
		this.p_warning = p_warning;
	}

	public Passenger(String p_id2, String p_pw2, String p_ph2) {
		this.p_id=p_id2;
		this.p_pw=p_pw2;
		this.p_ph=p_ph2;
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

	public String getNew_pw() {
		return new_pw;
	}

	public void setNew_pw(String new_pw) {
		this.new_pw = new_pw;
	}

	public boolean isP_warning() {
		return p_warning;
	}

	public void setP_warning(boolean p_warning) {
		this.p_warning = p_warning;
	}

	@Override
	public String toString() {
		return "Passenger [p_id=" + p_id + ", p_pw=" + p_pw + ", p_ph=" + p_ph + ", new_pw=" + new_pw + ", p_warning="
				+ p_warning + "]";
	}

	
}
