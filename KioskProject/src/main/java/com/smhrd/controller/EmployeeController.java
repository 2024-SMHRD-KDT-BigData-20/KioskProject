package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.entity.Employee;
import com.smhrd.mapper.EmployeeMapper;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeMapper e_mapper;
	
	
	// 관리자 로그인 페이지 이동
	@RequestMapping("/supervisor_0_initial.do")
	public void supervisor_0_initial(HttpServletRequest request) {}
	
	// 상품 관리 페이지 이동
	@RequestMapping("/supervisor_1_PM.do")
	public void supervisor_1_PM(HttpServletRequest request) {}
	
	// 회원 관리 페이지 이동
	@RequestMapping("/supervisor_2_MM.do")
	public void supervisor_2_MM(HttpServletRequest request) {}
	
	// 직원 관리 페이지 이동
	@RequestMapping("/supervisor_3_Emp.do")
	public void supervisor_3_Emp(HttpServletRequest request) {}
	
	// 판매량 통계 페이지 이동
	@RequestMapping("/supervisor_4_Stat.do")
	public void supervisor_4_Stat(HttpServletRequest request) {}
	
	
	
	// 관리자 로그인 메소드
	@RequestMapping("/emp_login.do")
	public String emp_login(Employee employee, HttpSession session) {
			
		Employee logined_emp = e_mapper.emp_login();
		session.setAttribute("logined_emp", logined_emp);
			
		return "supervisor_0_main";
	}
	
		
	// 관리자 로그아웃
	@RequestMapping("/emp_logout.do")
	public String emp_logout(HttpSession session) {
			
		session.removeAttribute("logined_emp");
			
		return "supervisor_0_initial";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/* 요청에서 값을 넘겨받는 방법
	 *   (1) 요청/{name}     → (@PathVariable("name") 매개변수 이름(아무 이름 상관없음))
	 *   (2) 요청?name=value → (@RequestParam 매개변수 이름(name 값으로 받아옴))
	 *   (3) 요청?name=value →   name 값과 xml에 넣어줄 이름을 일치시키면,
	 *                            즉 SQL문에 들어갈 컬럼, 객체명과 같다면,
	 *                            → RequestParam을 사용하지 않음!
	 *                          (매개변수 이름(name값으로 일치))
	 * 
	 * 예시
	 *   (1) .do/{idx}    → (@PathVariable("idx") int theIdx)
	 *   (2) .do?theIdx=5 → (@RequestPara, int theIdx)
	 *   (3) .do?idx=5    → (int idx)
	 */
	
}
