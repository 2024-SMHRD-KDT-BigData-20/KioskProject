package com.smhrd.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smhrd.entity.Menu;

@Repository
public interface MenuMapper {

	List<Menu> menu_list();

	void menu_insert(Menu menu);

	Menu menu_select_one(int menu_idx);

	void menu_update(Menu menu);

	void menu_delete(int menu_idx);

	List<Menu> menu_search(String menu_search_text);
	
	List<String> menu_distinct_category();

	List<Menu> menu_categorize(String menu_category);
	
	byte[] get_menu_image(int menu_idx);
}
