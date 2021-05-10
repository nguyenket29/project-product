package com.hau.ketnguyen.converter;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.CustomerDTO;
import com.hau.ketnguyen.entity.CustomerEntity;

@Component
public class CustomerConverter {
	public CustomerDTO toDTO(CustomerEntity customerEntity) {
		CustomerDTO dto = new CustomerDTO();
		dto.setId(customerEntity.getId());
		dto.setCustomerAddress(customerEntity.getCustomerAddress());
		dto.setCustomerEmail(customerEntity.getCustomerEmail());
		dto.setCustomerName(customerEntity.getCustomerName());
		dto.setCustomerPhone(customerEntity.getCustomerPhone());
		dto.setStatus(customerEntity.isStatus());
		return dto;
	}
	
	public CustomerEntity toEntity(CustomerDTO customerDTO) {
		CustomerEntity entity = new CustomerEntity();
		entity.setCustomerAddress(customerDTO.getCustomerAddress());
		entity.setCustomerEmail(customerDTO.getCustomerEmail());
		entity.setCustomerName(customerDTO.getCustomerName());
		entity.setCustomerPhone(customerDTO.getCustomerPhone());
		entity.setStatus(customerDTO.isStatus());
		return entity;
	}
}
