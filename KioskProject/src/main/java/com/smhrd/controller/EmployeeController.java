package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.entity.Employee;
import com.smhrd.mapper.EmployeeMapper;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeMapper e_mapper;

	// 관리자 로그인 페이지 이동
	@RequestMapping("/supervisor_0_initial.do")
	public void supervisor_0_initial(HttpServletRequest request) {
	}

	// 상품 관리 페이지 이동
	@RequestMapping("/supervisor_1_PM.do")
	public void supervisor_1_PM(HttpServletRequest request) {
	}

	// 회원 관리 페이지 이동
	@RequestMapping("/supervisor_2_MM.do")
	public void supervisor_2_MM(HttpServletRequest request) {
	}

	// 직원 관리 페이지 이동
	@RequestMapping("/supervisor_3_EM.do")
	public void supervisor_3_Emp(HttpServletRequest request) {
	}

	// 판매량 통계 페이지 이동
	@RequestMapping("/supervisor_4_Stat.do")
	public void supervisor_4_Stat(HttpServletRequest request) {
	}

	// 관리자 로그인 메소드
	@RequestMapping("/emp_login.do")
	public String emp_login(Employee employee, HttpSession session) {

		Employee logined_emp = e_mapper.emp_login(employee);
		System.out.println(logined_emp);
		
		// 로그인 비어있는지 확인
	    if (logined_emp != null) {
	        session.setAttribute("logined_emp", logined_emp);
	        System.out.println(logined_emp);
	        return "supervisor_0_main";
	    } else {
	        return "supervisor_0_initial";
	    }
	}

	// 관리자 로그아웃
	@RequestMapping("/emp_logout.do")
	public String emp_logout(HttpSession session) {

		session.removeAttribute("logined_emp");

		return "supervisor_0_initial";
	}

	// 직원 목록 반환
	@RequestMapping("/emp_list.do")
	public String emp_list(Model model) {
		List<Employee> emp_list = e_mapper.emp_list();
		model.addAttribute("emp_list", emp_list);
		return "supervisor_3_EM";
	}

	// 직원 등록 페이지 반환
	@RequestMapping("/emp_insert_form.do")
	public String emp_insert_form() {
		return "supervisor_3_EM_insert_form";
	}

	// 직원 등록
	@RequestMapping("/emp_insert.do")
	public String emp_insert(Employee employee) {
		e_mapper.emp_insert(employee);
		return "redirect:/emp_list.do";
	}

	// 직원 수정 페이지 반환
	@RequestMapping("/emp_update_form.do/{emp_idx}")
	public String emp_update_form(@PathVariable("emp_idx") long emp_idx, Model model) {
		Employee updating_emp = e_mapper.emp_select_one(emp_idx);
		model.addAttribute("updating_emp", updating_emp);
		return "supervisor_3_EM_update_form";
	}

	// 직원 수정
	@RequestMapping("/emp_update.do")
	public String emp_update(Employee employee) {
		e_mapper.emp_update(employee);
		return "redirect:/emp_list.do";
	}

	// 직원 삭제
	@RequestMapping("/emp_delete.do/{emp_idx}")
	public String emp_delete(@PathVariable("emp_idx") long emp_idx) {
		e_mapper.emp_delete(emp_idx);
		return "redirect:/emp_list.do";
	}

	// 직원 검색 후 결과 페이지 반환
	// form에서 method="get"으로 전송, 따라서 파라미터 name으로 받아와야 함
	@RequestMapping("/emp_search.do")
	public String emp_search(@RequestParam("emp_search_text") String emp_search_text, Model model) {
		List<Employee> emp_search_result = e_mapper.emp_search(emp_search_text);
		model.addAttribute("emp_list", emp_search_result);
		return "supervisor_3_EM_search_result";
	}

	/*
	 * 요청에서 값을 넘겨받는 방법 (1) 요청/{name} → (@PathVariable("name") 매개변수 이름(아무 이름 상관없음))
	 * (2) 요청?name=value → (@RequestParam 매개변수 이름(name 값으로 받아옴)) (3) 요청?name=value →
	 * name 값과 xml에 넣어줄 이름을 일치시키면, 즉 SQL문에 들어갈 컬럼, 객체명과 같다면, → RequestParam을 사용하지
	 * 않음! (매개변수 이름(name값으로 일치))
	 * 
	 * 예시 (1) .do/{idx} → (@PathVariable("idx") int theIdx) (2) .do?theIdx=5 →
	 * (@RequestParam, int theIdx) (3) .do?idx=5 → (int idx)
	 */

}
