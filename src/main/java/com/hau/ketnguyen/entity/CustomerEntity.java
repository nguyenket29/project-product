package com.hau.ketnguyen.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name = "customers")
@Entity
public class CustomerEntity extends BaseEntity {
	@Column(name = "customer_name")
	private String customerName;
	@Column(name = "status")
	private boolean status;
	@Column(name = "customer_email")
	private String customerEmail;
	@Column(name = "customer_address")
	private String customerAddress;
	@Column(name = "customer_phone")
	private String customerPhone;

	@OneToMany(mappedBy = "customer")
	private List<OrderEntity> orders = new ArrayList<OrderEntity>();

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	
	 public double getRevenue() {
	        double revenue = 0;
	        for (OrderEntity order : orders) {
	            revenue += order.getTotalAmount();
	        }
	        return revenue;
	    }
}
