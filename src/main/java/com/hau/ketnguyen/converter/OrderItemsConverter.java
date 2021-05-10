package com.hau.ketnguyen.converter;

import org.springframework.stereotype.Component;

import com.hau.ketnguyen.dto.OrderItemsDTO;
import com.hau.ketnguyen.entity.OrderItemsEntity;

@Component
public class OrderItemsConverter {
	public OrderItemsDTO toDTO(OrderItemsEntity itemsEntity) {
		OrderItemsDTO dto = new OrderItemsDTO();
		dto.setId(itemsEntity.getId());
		dto.setOrderItemQuantity(itemsEntity.getOrderItemQuantity());
		dto.setOrderItemPrice(itemsEntity.getOrderItemPrice());
		dto.setAmount(itemsEntity.getAmount());
		dto.setStatus(itemsEntity.isStatus());
		return dto;
	}
	
	public OrderItemsEntity toEntity(OrderItemsDTO itemsDTO) {
		OrderItemsEntity itemsEntity = new OrderItemsEntity();
		itemsEntity.setStatus(itemsDTO.isStatus());
		itemsEntity.setOrderItemPrice(itemsDTO.getOrderItemPrice());
		itemsEntity.setOrderItemQuantity(itemsDTO.getOrderItemQuantity());
		itemsEntity.setAmount(itemsDTO.getAmount());
		return itemsEntity;
	}
}
