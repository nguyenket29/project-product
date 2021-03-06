package com.hau.ketnguyen.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name ="category")
@Entity
public class CategoryEntity extends BaseEntity{
	@Column(name = "name")
	private String name;
	
	@Column(name = "code")
	private String code;
	
	@OneToMany(mappedBy = "category")
	private List<ProductEntity> news = new ArrayList<>();

	public List<ProductEntity> getNews() {
		return news;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setNews(List<ProductEntity> news) {
		this.news = news;
	}
}
