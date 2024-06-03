package com.smhrd.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.smhrd.entity.MenuReco;

@Repository
public interface MenuRecoMapper {

	List<MenuReco> load_sales();

	List<MenuReco> load_reco();

	int update_reco_check(Map<String, Object> params);

	void insert_age_data(MenuReco menuReco);

	void delete_age_data(int menu_idx);
}
