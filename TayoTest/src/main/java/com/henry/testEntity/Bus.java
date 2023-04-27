package com.henry.testEntity;

public class Bus {

	private String b_id; // vehicleno
	private String routeno;
	private String routetid;
	private String nodeid; 
	private String nodenm;
	private int nodeord;
	
	public Bus() {
		
	}
	
	public Bus(String b_id, String routeno, String routetid, String nodeid, String nodenm, int nodeord) {
		this.b_id = b_id;
		this.routeno = routeno;
		this.routetid = routetid;
		this.nodeid = nodeid;
		this.nodenm = nodenm;
		this.nodeord = nodeord;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getRouteno() {
		return routeno;
	}

	public void setRouteno(String routeno) {
		this.routeno = routeno;
	}

	public String getRoutetid() {
		return routetid;
	}

	public void setRoutetid(String routetid) {
		this.routetid = routetid;
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

	@Override
	public String toString() {
		return "Bus [b_id=" + b_id + ", routeno=" + routeno + ", routetid=" + routetid + ", nodeid=" + nodeid
				+ ", nodenm=" + nodenm + ", nodeord=" + nodeord + "]";
	}
	
}
