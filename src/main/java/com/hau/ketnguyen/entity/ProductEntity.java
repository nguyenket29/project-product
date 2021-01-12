package com.hau.ketnguyen.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity{
	@Column(name = "name")
	private String name;
	@Column(name = "thumbnail")
	private String thumbnail;
	@Column(name = "price")
	private float price;
	@Column(name = "infomation")
	private String infomation;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private CategoryEntity category;
}
