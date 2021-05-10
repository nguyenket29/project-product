package com.hau.ketnguyen.dto;

public class OrderDTO extends BaseDTO<OrderDTO> {
	private Long customerId;
	private boolean status;

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}
}
