package com.smhrd.mapper;

import org.springframework.stereotype.Repository;
// 우리가 알고 있던 DAO와 같은 기능(JAVA와 SQL 연결)

import com.smhrd.entity.Worker;

@Repository
public interface WorkerMapper {

	Worker worker_login();
}
