package com.smhrd.entity;

public class MenuReco {

	private int menu_idx;
	private int reco_check;
	private int reco_ages; // 0: 10~20대, 1: 30~40대, 2: 50대 이상
	private int menu_sales;
	private int total_sales;
	private String menu_name_kor;

	public MenuReco(int menu_idx, int reco_check, int reco_ages, int menu_sales, int total_sales,
			String menu_name_kor) {
		super();
		this.menu_idx = menu_idx;
		this.reco_check = reco_check;
		this.reco_ages = reco_ages;
		this.menu_sales = menu_sales;
		this.total_sales = total_sales;
	}

	public MenuReco(int menu_idx, int reco_check, int reco_ages, int menu_sales, String menu_name_kor) {
		super();
		this.menu_idx = menu_idx;
		this.reco_check = reco_check;
		this.reco_ages = reco_ages;
		this.menu_sales = menu_sales;
		this.menu_name_kor = menu_name_kor;
	}

	public MenuReco(int menu_idx, int reco_check) {
		super();
		this.menu_idx = menu_idx;
		this.reco_check = reco_check;
	}

	public MenuReco(int menu_idx, int reco_check, int reco_ages) {
		super();
		this.menu_idx = menu_idx;
		this.reco_check = reco_check;
		this.reco_ages = reco_ages;
	}

	public MenuReco(int menu_idx, int total_sales, String menu_name_kor) {
		super();
		this.menu_idx = menu_idx;
		this.total_sales = total_sales;
	}

	public MenuReco() {
		super();
	}

	public int getMenu_idx() {
		return menu_idx;
	}

	public void setMenu_idx(int menu_idx) {
		this.menu_idx = menu_idx;
	}

	public int getReco_check() {
		return reco_check;
	}

	public void setReco_check(int reco_check) {
		this.reco_check = reco_check;
	}

	public int getReco_ages() {
		return reco_ages;
	}

	public void setReco_ages(int reco_ages) {
		this.reco_ages = reco_ages;
	}

	public int getMenu_sales() {
		return menu_sales;
	}

	public void setMenu_sales(int menu_sales) {
		this.menu_sales = menu_sales;
	}

	public int getTotal_sales() {
		return total_sales;
	}

	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
	}

	public String getMenu_name_kor() {
		return menu_name_kor;
	}

	public void setMenu_name_kor(String menu_name_kor) {
		this.menu_name_kor = menu_name_kor;
	}

}
