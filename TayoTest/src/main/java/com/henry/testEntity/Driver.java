package com.henry.testEntity;

public class Driver {
	
	private String d_id;
	private String d_pw;
	private String nd_pw;
	private String nd_pw1;
	private boolean d_warning;
	public Driver() {
		
	}
	public Driver(String d_id,String nd_pw,String nd_pw1) {
		
		this.d_id = d_id;
		this.nd_pw = nd_pw;
		this.nd_pw1 = nd_pw1;
	}

	public String getNp_pw() {
		return nd_pw;
	}

	public String getNd_pw() {
		return nd_pw;
	}

	public void setNd_pw(String nd_pw) {
		this.nd_pw = nd_pw;
	}

	public String getNd_pw1() {
		return nd_pw1;
	}

	public void setNd_pw1(String nd_pw1) {
		this.nd_pw1 = nd_pw1;
	}

	public void setNp_pw(String nd_pw) {
		this.nd_pw = nd_pw;
	}

	public String getNp_pw1() {
		return nd_pw1;
	}

	public void setNp_pw1(String nd_pw1) {
		this.nd_pw1 = nd_pw1;
	}
	
	public Driver(String d_id, String d_pw) {
		super();
		this.d_id = d_id;
		this.d_pw = d_pw;
	}
	public String getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_pw() {
		return d_pw;
	}
	public void setD_pw(String d_pw) {
		this.d_pw = d_pw;
	}
	@Override
	public String toString() {
		return "Driver [d_id=" + d_id + "]";
	}
	
	


}	
