package com.smhrd.entity;

public class Menu {

	String menu_idx;
	String menu_name_eng;
	String menu_name_kor;
	String menu_category;
	String menu_price;
	
	public Menu(String menu_idx, String menu_name_eng, String menu_name_kor, String menu_category, String menu_price) {
		super();
		this.menu_idx = menu_idx;
		this.menu_name_eng = menu_name_eng;
		this.menu_name_kor = menu_name_kor;
		this.menu_category = menu_category;
		this.menu_price = menu_price;
	}

	public Menu() {
		super();
	}

	public String getMenu_idx() {
		return menu_idx;
	}

	public void setMenu_idx(String menu_idx) {
		this.menu_idx = menu_idx;
	}

	public String getMenu_name_eng() {
		return menu_name_eng;
	}

	public void setMenu_name_eng(String menu_name_eng) {
		this.menu_name_eng = menu_name_eng;
	}

	public String getMenu_name_kor() {
		return menu_name_kor;
	}

	public void setMenu_name_kor(String menu_name_kor) {
		this.menu_name_kor = menu_name_kor;
	}

	public String getMenu_category() {
		return menu_category;
	}

	public void setMenu_category(String menu_category) {
		this.menu_category = menu_category;
	}

	public String getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	
	
}
