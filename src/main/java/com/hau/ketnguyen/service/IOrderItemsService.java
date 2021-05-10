package com.hau.ketnguyen.service;

import com.hau.ketnguyen.dto.OrderDTO;
import com.hau.ketnguyen.dto.OrderItemsDTO;
import com.hau.ketnguyen.dto.ProductDTO;

public interface IOrderItemsService {
	OrderItemsDTO save(OrderItemsDTO itemsDTO,OrderDTO orderDTO,ProductDTO productDTO);
}
