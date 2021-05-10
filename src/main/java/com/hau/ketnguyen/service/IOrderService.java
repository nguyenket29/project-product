package com.hau.ketnguyen.service;

import com.hau.ketnguyen.dto.CustomerDTO;
import com.hau.ketnguyen.dto.OrderDTO;

public interface IOrderService {
	OrderDTO save(OrderDTO orderDTO,CustomerDTO dto);
}
