package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.entity.MenuReco;
import com.smhrd.mapper.MenuRecoMapper;

@RestController
public class StatRestController {

	@Autowired
	private MenuRecoMapper r_mapper;
	
	
	// menu_reco 테이블 총 판매량 로딩
	@GetMapping("/load_sales")
	public List<MenuReco> load_sales() {
		List<MenuReco> sales = r_mapper.load_sales();
		return sales;
	}
	
	// menu_reco 테이블 내용 로딩
	@GetMapping("/load_reco")
	public List<MenuReco> load_reco() {
		/* 일반적인 경우에는 Board 객체로 바로 묶을 수 있는데
		 * @RequestBody MenuReco menuReco
		 * JSON으로 변환된 데이터는 @RequestBody가 필요 (가져오면 바로 묶어줄게~) */
		List<MenuReco> reco = r_mapper.load_reco();
		return reco;
	}
}
