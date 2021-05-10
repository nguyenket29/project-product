package com.hau.ketnguyen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.CustomerConverter;
import com.hau.ketnguyen.dto.CustomerDTO;
import com.hau.ketnguyen.entity.CustomerEntity;
import com.hau.ketnguyen.repository.CustomerRepository;
import com.hau.ketnguyen.service.ICustomerService;

@Service
public class CustomerServiceImpl implements ICustomerService {
	@Autowired
	private CustomerConverter customerConvert;
	
	@Autowired 
	private CustomerRepository customerRepository;

	@Override
	public CustomerDTO save(CustomerDTO customerDTO) {
		CustomerEntity customerEntity = customerConvert.toEntity(customerDTO);
		customerEntity.setStatus(true);
		customerEntity = customerRepository.save(customerEntity);
		customerDTO.setId(customerEntity.getId());
		return customerConvert.toDTO(customerEntity);
	}

}
