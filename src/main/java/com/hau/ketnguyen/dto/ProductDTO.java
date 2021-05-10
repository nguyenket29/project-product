package com.hau.ketnguyen.dto;

import java.util.Map;
import java.util.TreeMap;

import com.hau.ketnguyen.entity.ProductEntity;

public class ProductDTO extends BaseDTO<ProductDTO> {
	private String name;
	private String thumbnail;
	private float price;
	private String description;
	private Long categoryId;
	private String categoryCode;
	private int quantity;

	public ProductDTO(ProductEntity pro) {
		name = pro.getName();
		thumbnail = pro.getThumbnail();
		price = pro.getPrice();
		description = pro.getDescription();
		quantity = pro.getQuantity();
	}

	public ProductDTO() {
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	@Override
	public String toString() {
		return "ProductDTO [name=" + name + ", thumbnail=" + thumbnail + ", price=" + price + ", infomation="
				+ description + ", categoryId=" + categoryId + ", categoryCode=" + categoryCode + "]";
	}
	
	public float totalPrice(TreeMap<Long, CartDTO> cartItems) {
		int count = 0;
		for (Map.Entry<Long, CartDTO> list : cartItems.entrySet()) {
			count += list.getValue().getProductDTO().getPrice() * list.getValue().getProductDTO().getQuantity();
		}
		return count;
	}
}

//if (productInfo.getFileData() != null) {
//    byte[] image = productInfo.getFileData().getBytes();
//    if (image != null && image.length > 0) {
//        product.setImage(image);
//    }
//}
