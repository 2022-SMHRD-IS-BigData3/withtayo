package com.henry.testEntity;

public class Recent {
	private String rec_id;
	private String p_id;
	private String rec_dprt;
	private String rec_arrv;
	private String rec_dprt_id;
	private String rec_arrv_id;

	public Recent() {
		
	}

	public Recent(String rec_id, String p_id, String rec_dprt, String rec_arrv, String rec_dprt_id,
			String rec_arrv_id) {
		this.rec_id = rec_id;
		this.p_id = p_id;
		this.rec_dprt = rec_dprt;
		this.rec_arrv = rec_arrv;
		this.rec_dprt_id = rec_dprt_id;
		this.rec_arrv_id = rec_arrv_id;
	}

	public String getRec_dprt_id() {
		return rec_dprt_id;
	}

	public void setRec_dprt_id(String rec_dprt_id) {
		this.rec_dprt_id = rec_dprt_id;
	}

	public String getRec_arrv_id() {
		return rec_arrv_id;
	}

	public void setRec_arrv_id(String rec_arrv_id) {
		this.rec_arrv_id = rec_arrv_id;
	}

	public String getRec_id() {
		return rec_id;
	}

	public void setRec_id(String rec_id) {
		this.rec_id = rec_id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getRec_dprt() {
		return rec_dprt;
	}

	public void setRec_dprt(String rec_dprt) {
		this.rec_dprt = rec_dprt;
	}

	public String getRec_arrv() {
		return rec_arrv;
	}

	public void setRec_arrv(String rec_arrv) {
		this.rec_arrv = rec_arrv;
	}

	@Override
	public String toString() {
		return "Recent [rec_id=" + rec_id + ", p_id=" + p_id + ", rec_dprt=" + rec_dprt + ", rec_arrv=" + rec_arrv
				+ ", rec_dprt_id=" + rec_dprt_id + ", rec_arrv_id=" + rec_arrv_id + "]";
	}

}
