package com.spring.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.spring.dto.Customer;

@Mapper
public interface CustomerMapper {
	
	// getCustomer - id, pw
	public Customer getCustomerByIdAndPw(@Param("id") String id, @Param("pw") String pw) throws SQLException;
	
}
