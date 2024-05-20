package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.mapper.MenuMapper;

@RestController
public class MenuRestController {

	@Autowired
	private MenuMapper m_mapper;
	
	
	// 메뉴 카테고리 distinct 결과 → select 태그에 삽입
	@GetMapping("/menu_categories")
	public List<String> menu_categories() {
		List<String> menu_categories = m_mapper.menu_distinct_category();
		return menu_categories;
	}
}
