package com.henry.testEntity;

import java.sql.Date;

public class Book_Info {

	private String blog_id;
	private String routeid;
	private String routeno;
	private String dprtnode;
	private String arrvnode;
	private String p_id;
	private Date booktime;
	private String dprtname;
	private String arrvname;
	private String b_id;
	private boolean accepted;
	private boolean canceled;

	public Book_Info() {
		
	}

	public Book_Info(String blog_id, String routeid, String routeno, String dprtnode, String arrvnode, String p_id,
			Date booktime, String dprtname, String arrvname, String b_id, boolean accepted, boolean canceled) {
		this.blog_id = blog_id;
		this.routeid = routeid;
		this.routeno = routeno;
		this.dprtnode = dprtnode;
		this.arrvnode = arrvnode;
		this.p_id = p_id;
		this.booktime = booktime;
		this.dprtname = dprtname;
		this.arrvname = arrvname;
		this.b_id = b_id;
		this.accepted = accepted;
		this.canceled = canceled;
	}

	public boolean isCanceled() {
		return canceled;
	}

	public void setCanceled(boolean canceled) {
		this.canceled = canceled;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public boolean getAccepted() {
		return accepted;
	}

	public void setAccepted(boolean accepted) {
		this.accepted = accepted;
	}

	public String getDprtname() {
		return dprtname;
	}

	public void setDprtname(String dprtname) {
		this.dprtname = dprtname;
	}

	public String getArrvname() {
		return arrvname;
	}

	public void setArrvname(String arrvname) {
		this.arrvname = arrvname;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public Date getBooktime() {
		return booktime;
	}

	public void setBooktime(Date booktime) {
		this.booktime = booktime;
	}

	public String getBlog_id() {
		return blog_id;
	}

	public void setBlog_id(String blog_id) {
		this.blog_id = blog_id;
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

	public String getDprtnode() {
		return dprtnode;
	}

	public void setDprtnode(String dprtnode) {
		this.dprtnode = dprtnode;
	}

	public String getArrvnode() {
		return arrvnode;
	}

	public void setArrvnode(String arrvnode) {
		this.arrvnode = arrvnode;
	}

	@Override
	public String toString() {
		return "Book_Info [blog_id=" + blog_id + ", routeid=" + routeid + ", routeno=" + routeno + ", dprtnode="
				+ dprtnode + ", arrvnode=" + arrvnode + ", p_id=" + p_id + ", booktime=" + booktime + ", dprtname="
				+ dprtname + ", arrvname=" + arrvname + ", b_id=" + b_id + ", accepted=" + accepted + ", canceled="
				+ canceled + "]";
	}

}
