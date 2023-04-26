package com.henry.testEntity;

public class Book_Info {

	private String blog_id;
	private String routeid;
	private String routeno;
	private String dprtnode;
	private String arrvnode;
	private String p_id;
	private String booktime;
	private String dprtname;
	private String arrvname;

	public Book_Info() {
		
	}

	public Book_Info(String blog_id, String routeid, String routeno, String dprtnode, String arrvnode, String p_id,
			String booktime, String dprtname, String arrvname) {
		this.blog_id = blog_id;
		this.routeid = routeid;
		this.routeno = routeno;
		this.dprtnode = dprtnode;
		this.arrvnode = arrvnode;
		this.p_id = p_id;
		this.booktime = booktime;
		this.dprtname = dprtname;
		this.arrvname = arrvname;
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

	public String getBooktime() {
		return booktime;
	}

	public void setBooktime(String booktime) {
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
				+ dprtname + ", arrvname=" + arrvname + "]";
	}

	

}
