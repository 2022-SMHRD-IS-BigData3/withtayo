package com.henry.testEntity;

// TODODODODODODODODODODODDO
public class Shift {

	private String shift_id;
	private String b_id;
	private String d_id;
	private int num_psg;
	private int total_psg;
	
	public Shift() {
		
	}
	
	public Shift(String shift_id, String b_id, String d_id, int num_psg, int total_psg) {

		this.shift_id = shift_id;
		this.b_id = b_id;
		this.d_id = d_id;
		this.num_psg = num_psg;
		this.total_psg = total_psg;
	}

	public String getShift_id() {
		return shift_id;
	}

	public void setShift_id(String shift_id) {
		this.shift_id = shift_id;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getD_id() {
		return d_id;
	}

	public void setD_id(String d_id) {
		this.d_id = d_id;
	}

	public int getNum_psg() {
		return num_psg;
	}

	public void setNum_psg(int num_psg) {
		this.num_psg = num_psg;
	}

	public int getTotal_psg() {
		return total_psg;
	}

	public void setTotal_psg(int total_psg) {
		this.total_psg = total_psg;
	}

	@Override
	public String toString() {
		return "Shift [shift_id=" + shift_id + ", b_id=" + b_id + ", d_id=" + d_id + ", num_psg=" + num_psg
				+ ", total_psg=" + total_psg + "]";
	}
	
}
