package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dto.Customer;
import com.spring.mapper.CustomerMapper;

@Service
public class CustomerService {
	
	@Autowired
	CustomerMapper customerMapper;

	public Customer getCustomerByIdAndPw(String id, String pw) throws Exception {
		Customer customer = customerMapper.getCustomerByIdAndPw(id, pw);
		
		if(customer == null) {
			throw new Exception("id와 비밀번호를 확인해주세요.");
		}
		
		return customer;
	}
	
}
