package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.entity.Employee;
import com.smhrd.mapper.EmployeeMapper;

@Controller
public class HeaderController {

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
	
	// 로그아웃
	
}
