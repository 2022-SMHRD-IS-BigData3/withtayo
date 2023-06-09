package com.henry.testEntity;

public class Favorite {

	private String f_id;
	private String p_id;
	private String routeid;
	private String f_dprt;
	private String f_arrv;
	private String routeno;
	private String f_dprt_id;
	private String f_arrv_id;
	
	@Override
	public String toString() {
		return "Favorite [f_id=" + f_id + ", p_id=" + p_id + ", routeid=" + routeid + ", f_dprt=" + f_dprt + ", f_arrv="
				+ f_arrv + ", routeno=" + routeno + ", f_dprt_id=" + f_dprt_id + ", f_arrv_id=" + f_arrv_id + "]";
	}
	
	public String getF_dprt_id() {
		return f_dprt_id;
	}

	public void setF_dprt_id(String f_dprt_id) {
		this.f_dprt_id = f_dprt_id;
	}

	public String getF_arrv_id() {
		return f_arrv_id;
	}

	public void setF_arrv_id(String f_arrv_id) {
		this.f_arrv_id = f_arrv_id;
	}

	public String getRouteno() {
		return routeno;
	}

	public void setRouteno(String routeno) {
		this.routeno = routeno;
	}

	public String getF_id() {
		return f_id;
	}
	
	public String getF_dprt() {
		return f_dprt;
	}

	public void setF_dprt(String f_dprt) {
		this.f_dprt = f_dprt;
	}

	public String getF_arrv() {
		return f_arrv;
	}

	public void setF_arrv(String f_arrv) {
		this.f_arrv = f_arrv;
	}

	public void setF_id(String f_id) {
		this.f_id = f_id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getRouteid() {
		return routeid;
	}

	public void setRouteid(String routeid) {
		this.routeid = routeid;
	}
	
	public Favorite() {
		// stub
	}

	public Favorite(String f_id, String p_id, String routeid, String f_dprt, String f_arrv, String routeno,
			String f_dprt_id, String f_arrv_id) {
		this.f_id = f_id;
		this.p_id = p_id;
		this.routeid = routeid;
		this.f_dprt = f_dprt;
		this.f_arrv = f_arrv;
		this.routeno = routeno;
		this.f_dprt_id = f_dprt_id;
		this.f_arrv_id = f_arrv_id;
	}
	
}
