package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.entity.MenuReco;
import com.smhrd.mapper.MenuRecoMapper;

@RestController
public class StatController {

	@Autowired
	private MenuRecoMapper r_mapper;
	
	
	// menu_reco 테이블 총 판매량 로딩
	@GetMapping("/load_sales")
	public List<MenuReco> load_sales() {
		List<MenuReco> sales = r_mapper.load_sales();
		return sales;
	}
}
