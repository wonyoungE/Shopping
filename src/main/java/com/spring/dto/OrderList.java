package com.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import oracle.sql.DATE;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class OrderList {
	private int 	orderListId;
	private String 	customerId;
	private int 	totalPrice;
	private DATE 	orderDate;
}