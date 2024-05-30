package com.smhrd.entity;

public class MenuReco {

	private int menu_idx;
	private int reco_check;
	private int reco_ages;
	private int menu_sales;
	private int total_sales;

	public MenuReco(int menu_idx, int reco_check, int reco_ages, int menu_sales, int total_sales) {
		super();
		this.menu_idx = menu_idx;
		this.reco_check = reco_check;
		this.reco_ages = reco_ages;
		this.menu_sales = menu_sales;
		this.total_sales = total_sales;
	}

	public MenuReco(int menu_idx, int menu_sales, int total_sales) {
		super();
		this.menu_idx = menu_idx;
		this.menu_sales = menu_sales;
		this.total_sales = total_sales;
	}

	public MenuReco(int menu_idx, int total_sales) {
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

}
