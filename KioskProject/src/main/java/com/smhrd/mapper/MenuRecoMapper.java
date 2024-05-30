package com.smhrd.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smhrd.entity.MenuReco;

@Repository
public interface MenuRecoMapper {

	List<MenuReco> load_sales();

}
