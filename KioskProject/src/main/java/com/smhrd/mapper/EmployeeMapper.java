package com.smhrd.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
// 우리가 알고 있던 DAO와 같은 기능(JAVA와 SQL 연결)

import com.smhrd.entity.Employee;

@Repository
public interface EmployeeMapper {

	Employee emp_login();

	List<Employee> emp_list();

	void emp_insert(Employee employee);

	Employee emp_select_one(long emp_idx);

	void emp_update(Employee employee);

	void emp_delete(long emp_idx);

	List<Employee> emp_search(String emp_search_text);
}
