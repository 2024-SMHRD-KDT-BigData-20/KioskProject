package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.entity.Customer;
import com.smhrd.mapper.CustomerMapper;

@Controller
public class CustomerController {

	@Autowired
	private CustomerMapper c_mapper;
	
	
	// 회원 목록 로딩
	@RequestMapping("/member_list.do")
	public String member_list(Model model) {
		List<Customer> member_list = c_mapper.member_list();
		model.addAttribute("member_list", member_list);
		return "supervisor_2_MM";
	}
	
	
	// 회원 등록 페이지 반환
	@RequestMapping("/member_insert_form.do")
	public String member_insert_form() {
		return "supervisor_2_MM_insert_form";
	}
	
	
	// 회원 등록
	@RequestMapping("/member_insert.do")
	public String member_insert(Customer customer) {
		c_mapper.member_insert(customer);
		return "redirect:/member_list.do";
	}
	
	
	// 회원 수정 페이지 반환
	@RequestMapping("/member_update_form.do/{cust_idx}")
	public String member_update_form(@PathVariable("cust_idx") long cust_idx, Model model) {
		Customer updating_member = c_mapper.member_select_one(cust_idx);
		model.addAttribute("updating_member", updating_member);
		return "supervisor_2_MM_update_form";
	}
	
	
	// 회원 수정
	@RequestMapping("/member_update.do")
	public String member_update(Customer customer) {
		c_mapper.member_update(customer);
		return "redirect:/member_list.do";
	}
	
	
	// 회원 삭제
	@RequestMapping("/member_delete.do/{cust_idx}")
	public String member_delete(@PathVariable("cust_idx") long cust_idx) {
		c_mapper.member_delete(cust_idx);
		return "redirect:/member_list.do";
	}
	
	
	// 회원 가입일 기준 정렬
	@RequestMapping(value = "/member_order_by_date.do", method = RequestMethod.GET)
	// 가입일순 오름차순 or 내림차순 선택에 따라 정렬 리스트 페이지 반환
	public String member_order_by_date(@RequestParam("member_order_by_date") String way_order, Model model) {
		if (way_order.equals("오름차순")) {
			List<Customer> member_order_by_date = c_mapper.member_order_by_date_asc();
			model.addAttribute("member_list", member_order_by_date);
		} else {
			List<Customer> member_order_by_date = c_mapper.member_order_by_date_desc();
			model.addAttribute("member_list", member_order_by_date);
		}
		return "supervisor_2_MM_search_result";
	}
	
	
	// 메뉴 검색 후 결과 페이지 반환
	// form에서 method="get"으로 전송, 따라서 파라미터 name으로 받아와야 함
	@RequestMapping("/member_search.do")
	public String member_search(@RequestParam("member_search_text") String member_search_text, Model model) {
		List<Customer> member_search_result = c_mapper.member_search(member_search_text);
		model.addAttribute("member_list", member_search_result);
		return "supervisor_2_MM_search_result";
	}
	

	
}
