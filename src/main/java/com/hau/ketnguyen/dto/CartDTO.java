package com.hau.ketnguyen.dto;

public class CartDTO extends BaseDTO<CartDTO> {
	private ProductDTO productDTO;
	private int quantity;

	public CartDTO() {
	}

	public CartDTO(ProductDTO productDTO, int quantity) {
		this.productDTO = productDTO;
		this.quantity = quantity;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
