package com.smhrd.entity;

public class Worker {
	String work_idx;
	String work_name;
	String work_tel;
	String work_id;
	String work_pw;
	String work_auth;
	
	public Worker(String work_idx, String work_name, String work_tel, String work_id, String work_pw,
			String work_auth) {
		super();
		this.work_idx = work_idx;
		this.work_name = work_name;
		this.work_tel = work_tel;
		this.work_id = work_id;
		this.work_pw = work_pw;
		this.work_auth = work_auth;
	}

	public Worker() {
		super();
	}

	public Worker(String work_id, String work_pw) {
		super();
		this.work_id = work_id;
		this.work_pw = work_pw;
	}

	public String getWork_idx() {
		return work_idx;
	}

	public void setWork_idx(String work_idx) {
		this.work_idx = work_idx;
	}

	public String getWork_name() {
		return work_name;
	}

	public void setWork_name(String work_name) {
		this.work_name = work_name;
	}

	public String getWork_tel() {
		return work_tel;
	}

	public void setWork_tel(String work_tel) {
		this.work_tel = work_tel;
	}

	public String getWork_id() {
		return work_id;
	}

	public void setWork_id(String work_id) {
		this.work_id = work_id;
	}

	public String getWork_pw() {
		return work_pw;
	}

	public void setWork_pw(String work_pw) {
		this.work_pw = work_pw;
	}

	public String getWork_auth() {
		return work_auth;
	}

	public void setWork_auth(String work_auth) {
		this.work_auth = work_auth;
	}	
	
}
