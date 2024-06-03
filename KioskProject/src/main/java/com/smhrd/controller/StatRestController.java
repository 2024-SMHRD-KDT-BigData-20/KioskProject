package com.smhrd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@PostMapping("/update_reco_check")
	@ResponseBody
	public ResponseEntity<String> updateRecoCheck(@RequestBody Map<String, Object> payload) {
	    int menuIdx = (Integer) payload.get("menu_idx");
	    int recoAges = (Integer) payload.get("reco_ages");
	    int recoCheck = (Integer) payload.get("reco_check");
	    
	    Map<String, Object> params = new HashMap<>();
	    params.put("menu_idx", menuIdx);
	    params.put("reco_ages", recoAges);
	    params.put("reco_check", recoCheck);

	    int result = r_mapper.update_reco_check(params);
	    
	    if (result > 0) {
	        return ResponseEntity.ok("추천 여부가 성공적으로 업데이트되었습니다.");
	    } else {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("추천 여부 업데이트 실패");
	    }
	}


	
}
