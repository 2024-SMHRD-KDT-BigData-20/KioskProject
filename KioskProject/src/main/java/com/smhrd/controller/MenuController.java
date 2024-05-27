package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		return "supervisor_1_PM";
	}

	// 메뉴 등록 페이지 반환
	@RequestMapping("/menu_insert_form.do")
	public String menu_insert_form() {
		return "supervisor_1_PM_insert_form";
	}

	/*
	 * // 메뉴 등록(이미지 없이)
	 * 
	 * @RequestMapping("/menu_insert.do") public String menu_insert(Menu menu) {
	 * m_mapper.menu_insert(menu); return "redirect:/menu_list.do"; }
	 */

	@RequestMapping(value = "/menu_insert.do", method = RequestMethod.POST)
	public String menu_insert(@RequestParam("menu_name_eng") String menuNameEng,
			@RequestParam("menu_name_kor") String menuNameKor, @RequestParam("menu_category") String menuCategory,
			@RequestParam("menu_price") int menuPrice, @RequestParam("menu_img") MultipartFile file, Model model) {

		try {
			if (!file.isEmpty()) {
				byte[] bytes = file.getBytes();
				System.out.println("Received file: " + file.getOriginalFilename() + ", size: " + bytes.length);
				Menu menu = new Menu();
				menu.setMenu_name_eng(menuNameEng);
				menu.setMenu_name_kor(menuNameKor);
				menu.setMenu_category(menuCategory);
				menu.setMenu_price(menuPrice);
				menu.setMenu_img(bytes);

				m_mapper.menu_insert(menu);
				model.addAttribute("message", "Menu and file uploaded successfully!");
			} else {
				model.addAttribute("message", "File is empty!");
			}
		} catch (IOException e) {
			model.addAttribute("message", "Failed to upload file: " + e.getMessage());
			e.printStackTrace(); // 로그 출력
		}
		return "redirect:/menu_list.do";
	}

	// 메뉴 수정 페이지 반환
	@RequestMapping("/menu_update_form.do/{menu_idx}")
	public String menu_update_form(@PathVariable("menu_idx") int menu_idx, Model model) {
		Menu updating_menu = m_mapper.menu_select_one(menu_idx);
		model.addAttribute("updating_menu", updating_menu);
		return "supervisor_1_PM_update_form";
	}

	// 메뉴 수정
	@RequestMapping("/menu_update.do")
	public String menu_update(Menu menu) {
		m_mapper.menu_update(menu);
		return "redirect:/menu_list.do";
	}

	// 메뉴 삭제
	@RequestMapping("/menu_delete.do/{menu_idx}")
	public String menu_delete(@PathVariable("menu_idx") int menu_idx) {
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
		return "supervisor_1_PM_search_result";
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
		return "supervisor_1_PM_search_result";
	}

    @GetMapping("/menu_image/{menu_idx}")
    public ResponseEntity<byte[]> getMenuImage(@PathVariable("menu_idx") int menu_idx) {
        try {
            byte[] image = m_mapper.get_menu_image(menu_idx);
            if (image == null) {
                return ResponseEntity.notFound().build();
            }
            HttpHeaders headers = new HttpHeaders();
            headers.add(HttpHeaders.CONTENT_TYPE, "image/jpeg");
            return ResponseEntity.ok().headers(headers).body(image);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).build();
        }
    }

}
