package com.hau.ketnguyen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.OrderConverter;
import com.hau.ketnguyen.dto.CustomerDTO;
import com.hau.ketnguyen.dto.OrderDTO;
import com.hau.ketnguyen.entity.CustomerEntity;
import com.hau.ketnguyen.entity.OrderEntity;
import com.hau.ketnguyen.repository.CustomerRepository;
import com.hau.ketnguyen.repository.OrderRepository;
import com.hau.ketnguyen.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{
	@Autowired
	private OrderConverter orderConverter;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public OrderDTO save(OrderDTO orderDTO,CustomerDTO customerDTO) {
		CustomerEntity entity = customerRepository.findOne(customerDTO.getId());
		OrderEntity orderEntity = orderConverter.toEntity(orderDTO);
		orderEntity.setCustomer(entity);
		orderEntity.setStatus(true);
		orderEntity = orderRepository.save(orderEntity);
		orderDTO.setId(orderEntity.getId());
		return orderConverter.toDTO(orderEntity);
	}

}
