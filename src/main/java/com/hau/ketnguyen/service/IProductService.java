package com.hau.ketnguyen.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.hau.ketnguyen.dto.ProductDTO;

public interface IProductService {
	List<ProductDTO> findAll();
	
	List<ProductDTO> findAll(Pageable pageable);
	
	List<ProductDTO> findAll(int page,int limit);
	
	ProductDTO setProduct(int page,int limit);
	
	ProductDTO setProductByCategory(int page,int limit,Long id);
	
	ProductDTO setProductBySearch(int page,int limit,String key);
	
	ProductDTO findById(Long id);
	
	int getTotalItem();
	
	int getTotalItemByCategory(Long id);
	
	List<ProductDTO> findAllByCategory(Long categoryId, int page, int limit);
	
	List<ProductDTO> findByPriceIncreaseDecrease(int page, int limit,String sort_by,Sort sort);
	
	List<ProductDTO> findAll(int page, int limit,String sort_by,Sort sort);

	List<ProductDTO> findByNameAZZA(int page, int limit,String sort_by,Sort sort);
	
	List<ProductDTO> searchProduct(String key,int page , int limit);
	
	int getTotalItemSearch(String key);
	
	ProductDTO saveOrUpdate(ProductDTO productDTO);
	void delete(long id);
	
}
