package com.hau.ketnguyen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.OrderItemsConverter;
import com.hau.ketnguyen.dto.OrderDTO;
import com.hau.ketnguyen.dto.OrderItemsDTO;
import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.entity.OrderEntity;
import com.hau.ketnguyen.entity.OrderItemsEntity;
import com.hau.ketnguyen.entity.ProductEntity;
import com.hau.ketnguyen.repository.OrderItemsRepository;
import com.hau.ketnguyen.repository.OrderRepository;
import com.hau.ketnguyen.repository.ProductRepository;
import com.hau.ketnguyen.service.IOrderItemsService;

@Service
public class OrderItemsServiceImpl implements IOrderItemsService{
	@Autowired
	private OrderItemsConverter orderItemsConverter;
	
	@Autowired
	private OrderItemsRepository orderItemsRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public OrderItemsDTO save(OrderItemsDTO itemsDTO,OrderDTO orderDTO,ProductDTO productDTO) {
		OrderItemsEntity itemsEntity = orderItemsConverter.toEntity(itemsDTO);
		OrderEntity order = orderRepository.findOne(orderDTO.getId());
		ProductEntity product = productRepository.findOne(productDTO.getId());
		itemsEntity.setOrder(order);
		itemsEntity.setProduct(product);
		return orderItemsConverter.toDTO(orderItemsRepository.save(itemsEntity));
	}

}
