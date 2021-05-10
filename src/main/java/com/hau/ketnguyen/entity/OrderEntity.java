package com.hau.ketnguyen.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name = "orders")
@Entity
public class OrderEntity extends BaseEntity {
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id")
	private CustomerEntity customer;

	@Column(name = "status")
	private boolean status;

	@OneToMany(mappedBy = "order")
	private List<OrderItemsEntity> items = new ArrayList<>();

	public double getTotalAmount() {
		double total = 0;
		for (OrderItemsEntity item : items) {
			total += item.getProduct().getPrice();
		}
		return total;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public CustomerEntity getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerEntity customer) {
		this.customer = customer;
	}

	public List<OrderItemsEntity> getItems() {
		return items;
	}

	public void setItems(List<OrderItemsEntity> items) {
		this.items = items;
	}
}
