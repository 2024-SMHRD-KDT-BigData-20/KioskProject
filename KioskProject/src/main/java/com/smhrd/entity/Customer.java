package com.smhrd.entity;

public class Customer {

	long cust_idx;
	String cust_phone;
	int cust_stamp;
	String joined_at;
	String cust_face_img;
	int cust_ages;
	
	public Customer(long cust_idx, String cust_phone, int cust_stamp, String joined_at, String cust_face_img,
			int cust_ages) {
		super();
		this.cust_idx = cust_idx;
		this.cust_phone = cust_phone;
		this.cust_stamp = cust_stamp;
		this.joined_at = joined_at;
		this.cust_face_img = cust_face_img;
		this.cust_ages = cust_ages;
	}
	
	public Customer() {
		super();
	}

	public long getCust_idx() {
		return cust_idx;
	}

	public void setCust_idx(long cust_idx) {
		this.cust_idx = cust_idx;
	}

	public String getCust_phone() {
		return cust_phone;
	}

	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}

	public int getCust_stamp() {
		return cust_stamp;
	}

	public void setCust_stamp(int cust_stamp) {
		this.cust_stamp = cust_stamp;
	}

	public String getJoined_at() {
		return joined_at;
	}

	public void setJoined_at(String joined_at) {
		this.joined_at = joined_at;
	}

	public String getCust_face_img() {
		return cust_face_img;
	}

	public void setCust_face_img(String cust_face_img) {
		this.cust_face_img = cust_face_img;
	}

	public int getCust_ages() {
		return cust_ages;
	}

	public void setCust_ages(int cust_ages) {
		this.cust_ages = cust_ages;
	}
	
}
