package com.henry.testEntity;

// TODODODODODODODODODODODDO
public class Shift {

	private String shift_id;
	private String b_id;
	private String d_id;
	private int num_psg;
	private int total_psg;
	private String routeid;
	private String routeno;
	private String nodeid;
	private String nodenm;
	private int nodeord;
	
	public Shift() {
		
	}

	public Shift(String shift_id, String b_id, String d_id, int num_psg, int total_psg, String routeid, String routeno,
			String nodeid, String nodenm, int nodeord) {
		this.shift_id = shift_id;
		this.b_id = b_id;
		this.d_id = d_id;
		this.num_psg = num_psg;
		this.total_psg = total_psg;
		this.routeid = routeid;
		this.routeno = routeno;
		this.nodeid = nodeid;
		this.nodenm = nodenm;
		this.nodeord = nodeord;
	}

	@Override
	public String toString() {
		return "Shift [shift_id=" + shift_id + ", b_id=" + b_id + ", d_id=" + d_id + ", num_psg=" + num_psg
				+ ", total_psg=" + total_psg + ", routeid=" + routeid + ", routeno=" + routeno + ", nodeid=" + nodeid
				+ ", nodenm=" + nodenm + ", nodeord=" + nodeord + "]";
	}

	public String getNodeid() {
		return nodeid;
	}

	public void setNodeid(String nodeid) {
		this.nodeid = nodeid;
	}

	public String getNodenm() {
		return nodenm;
	}

	public void setNodenm(String nodenm) {
		this.nodenm = nodenm;
	}

	public int getNodeord() {
		return nodeord;
	}

	public void setNodeord(int nodeord) {
		this.nodeord = nodeord;
	}

	public String getRouteid() {
		return routeid;
	}

	public void setRouteid(String routeid) {
		this.routeid = routeid;
	}

	public String getRouteno() {
		return routeno;
	}

	public void setRouteno(String routeno) {
		this.routeno = routeno;
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
	
}
