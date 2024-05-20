package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.entity.Menu;
import com.smhrd.mapper.MenuMapper;

@Controller
public class MenuController {

	@Autowired
	private MenuMapper m_mapper;
	
	
	// 메뉴 목록
	@RequestMapping("/menu_list.do")
	public String menu_list(Model model) {
		List<Menu> menu_list = m_mapper.menu_list();
		model.addAttribute("menu_list", menu_list);
		return "supervisor_PM";
	}
	
	
	// 메뉴 등록 페이지 반환
	@RequestMapping("/menu_insert_form.do")
	public String menu_insert_form() {
		return "supervisor_PM_insert_form";
	}
	
	
	// 메뉴 등록
	@RequestMapping("/menu_insert.do")
	public String menu_insert(Menu menu) {
		m_mapper.menu_insert(menu);
		return "redirect:/menu_list.do";
	}
	
	
	// 메뉴 수정 페이지 반환
	@RequestMapping("/menu_update_form.do/{menu_idx}")
	public String menu_update_form(@PathVariable("menu_idx") int menu_idx, Model model) {
		Menu updating_menu = m_mapper.menu_select_one(menu_idx);
		model.addAttribute("updating_menu", updating_menu);
		return "supervisor_PM_update_form";
	}
	
	
	// 메뉴 수정
	@RequestMapping("/menu_update.do")
	public String menu_update(Menu menu) {
		m_mapper.menu_update(menu);
		return "redirect:/menu_list.do";
	}
	
	
	// 메뉴 삭제
	@RequestMapping("/menu_delete.do/{menu_idx}")
	public String boardDelete(@PathVariable("menu_idx") int menu_idx) {
		m_mapper.menu_delete(menu_idx);
		return "redirect:/menu_list.do"; 
	}
	
	
	// 메뉴 검색 후 결과 페이지 반환
	// form에서 method="get"으로 전송, 따라서 파라미터 name으로 받아와야 함
	@RequestMapping("/menu_search.do")
	public String menu_search(@RequestParam("menu_search_text") String menu_search_text, Model model) {
		
		// 검색어가 영문이면 소문자로 변환
	    if (isEnglish(menu_search_text)) {
	        menu_search_text = menu_search_text.toLowerCase();
	    }
		
		List<Menu> menu_search_result = m_mapper.menu_search(menu_search_text);
		model.addAttribute("menu_search_result", menu_search_result);
		return "supervisor_PM_search_result";
	}
	
	// 문자열이 모두 영문인지 확인하는 유틸리티 메서드
	private boolean isEnglish(String text) {
	    for (char c : text.toCharArray()) {
	        if (!Character.isLetter(c) || (c < 'A' || c > 'z')) {
	            return false;
	        }
	    }
	    return true;
	}
	
	
	// 카테고리 선택 후 결과 페이지 반환
	@RequestMapping("/menu_categorized_result.do")
	public String menu_categorized_result(@RequestParam("menu_category") String menu_category, Model model) {
		
		List<Menu> menu_categorized_result = m_mapper.menu_categorize(menu_category);
		model.addAttribute("menu_search_result", menu_categorized_result);
		return "supervisor_PM_search_result";
	}


	
}
