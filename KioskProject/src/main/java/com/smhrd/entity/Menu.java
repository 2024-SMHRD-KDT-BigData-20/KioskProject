package com.smhrd.entity;

import java.util.Base64;

public class Menu {
	private int menu_idx;
	private String menu_name_eng;
	private String menu_name_kor;
	private String menu_category;
	private int menu_price;
	private byte[] menu_img; // 이미지
	private String menu_ages; // 연령대

	public Menu(int menu_idx, String menu_name_eng, String menu_name_kor, String menu_category, int menu_price,
			byte[] menu_img, String menu_ages) {
		super();
		this.menu_idx = menu_idx;
		this.menu_name_eng = menu_name_eng;
		this.menu_name_kor = menu_name_kor;
		this.menu_category = menu_category;
		this.menu_price = menu_price;
		this.menu_img = menu_img;
		this.menu_ages = menu_ages;
	}

	public Menu() {
		super();
	}

	public int getMenu_idx() {
		return menu_idx;
	}

	public void setMenu_idx(int menu_idx) {
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

	public int getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}

	public byte[] getMenu_img() {
		return menu_img;
	}

	public void setMenu_img(byte[] menu_img) {
		this.menu_img = menu_img;
	}

	public String getMenuImgBase64() {
		if (this.menu_img != null) {
			return Base64.getEncoder().encodeToString(this.menu_img);
		}
		return null;
	}

	public String getMenu_ages() {
		return menu_ages;
	}

	public void setMenu_ages(String menu_ages) {
		this.menu_ages = menu_ages;
	}
}
