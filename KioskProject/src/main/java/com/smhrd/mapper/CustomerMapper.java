package com.smhrd.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.smhrd.entity.Customer;

@Repository
public interface CustomerMapper {

	List<Customer> member_list();

	List<Customer> member_order_by_date_asc();
	
	List<Customer> member_order_by_date_desc();

	void member_insert(Customer customer);

	void member_update(Customer customer);

	Customer member_select_one(long cust_idx);

	void member_delete(long cust_idx);

	List<Customer> member_search(String member_search_text);

}
