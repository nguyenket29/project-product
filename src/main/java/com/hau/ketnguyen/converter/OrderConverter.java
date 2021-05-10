package com.hau.ketnguyen.converter;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.OrderDTO;
import com.hau.ketnguyen.entity.OrderEntity;

@Component
public class OrderConverter {
	public OrderDTO toDTO(OrderEntity orderEntity) {
		OrderDTO dto = new OrderDTO();
		dto.setId(orderEntity.getId());
		dto.setStatus(orderEntity.isStatus());
		return dto;
	}
	
	public OrderEntity toEntity(OrderDTO orderDTO) {
		OrderEntity entity = new OrderEntity();
		entity.setStatus(orderDTO.isStatus());
		return entity;
	}
}
