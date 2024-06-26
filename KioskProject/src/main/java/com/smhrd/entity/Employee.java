package com.smhrd.entity;

public class Employee {
	private long emp_idx;
	private String emp_name;
	private String emp_phone;
	private String emp_id;
	private String emp_pw;
	private int emp_auth;
	
	public Employee(long emp_idx, String emp_name, String emp_phone, String emp_id, String emp_pw, int emp_auth) {
		super();
		this.emp_idx = emp_idx;
		this.emp_name = emp_name;
		this.emp_phone = emp_phone;
		this.emp_id = emp_id;
		this.emp_pw = emp_pw;
		this.emp_auth = emp_auth;
	}

	public Employee() {
		super();
	}

	public Employee(String emp_id, String emp_pw) {
		super();
		this.emp_id = emp_id;
		this.emp_pw = emp_pw;
	}

	public long getemp_idx() {
		return emp_idx;
	}

	public void setemp_idx(long emp_idx) {
		this.emp_idx = emp_idx;
	}

	public String getemp_name() {
		return emp_name;
	}

	public void setemp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getemp_phone() {
		return emp_phone;
	}

	public void setemp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}

	public String getemp_id() {
		return emp_id;
	}

	public void setemp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getemp_pw() {
		return emp_pw;
	}

	public void setemp_pw(String emp_pw) {
		this.emp_pw = emp_pw;
	}

	public int getemp_auth() {
		return emp_auth;
	}

	public void setemp_auth(int emp_auth) {
		this.emp_auth = emp_auth;
	}	
	
}
