package com.hau.ketnguyen.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.ProductConverter;
import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.entity.CategoryEntity;
import com.hau.ketnguyen.entity.ProductEntity;
import com.hau.ketnguyen.repository.CategoryRepository;
import com.hau.ketnguyen.repository.ProductRepository;
import com.hau.ketnguyen.service.IProductService;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	private ProductRepository pro;

	@Autowired
	private ProductConverter proConvert;
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	@Transactional
	public List<ProductDTO> findAll() {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		List<ProductEntity> list = pro.findAll();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}

	@Override
	@Transactional
	public List<ProductDTO> findAll(Pageable pageable) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		List<ProductEntity> list = pro.findAll(pageable).getContent();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}
	
	@Override
	@Transactional
	public ProductDTO setProduct(int page,int limit) {
		ProductDTO model = new ProductDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setTotalItem(this.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		return model;
	}
	
	@Override
	@Transactional
	public ProductDTO setProductByCategory(int page,int limit,Long id) {
		ProductDTO model = new ProductDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setTotalItem(this.getTotalItemByCategory(id));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		return model;
	}
	
	@Override
	@Transactional
	public ProductDTO setProductBySearch(int page,int limit,String key) {
		ProductDTO model = new ProductDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setTotalItem(this.getTotalItemSearch(key));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		return model;
	}
	
	@Override
	@Transactional
	public List<ProductDTO> findAll(int page, int limit) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProduct(page, limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		List<ProductEntity> list = pro.findAll(pageable).getContent();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}

	@Override
	@Transactional
	public List<ProductDTO> findAllByCategory(Long categoryId, int page, int limit) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProductByCategory(page, limit, categoryId);
		Pageable pageable = new PageRequest(page - 1, limit);
		List<ProductEntity> list = pro.findAllByCategoryId(categoryId, pageable);
		for (ProductEntity entity : list) {
			if (categoryId.equals(entity.getCategory().getId())) {
				ProductDTO pro = proConvert.toDTO(entity);
				arr.add(pro);
			}
		}
		return arr;
	}

	@Override
	@Transactional
	public List<ProductDTO> findByPriceIncreaseDecrease(int page, int limit,String sort_by,Sort sort) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProduct(page, limit);
		Pageable pageable = new PageRequest(page - 1, limit,sort);
		List<ProductEntity> list = pro.findAll(pageable).getContent();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}
	
	@Override
	@Transactional
	public List<ProductDTO> findAll(int page, int limit,String sort_by,Sort sort) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProduct(page, limit);
		Pageable pageable = new PageRequest(page - 1, limit,sort);
		List<ProductEntity> list = pro.findAll(pageable).getContent();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}

	@Override
	@Transactional
	public List<ProductDTO> findByNameAZZA(int page, int limit,String sort_by,Sort sort) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProduct(page, limit);
		Pageable pageable = new PageRequest(page - 1, limit,sort);
		List<ProductEntity> list = pro.findAll(pageable).getContent();
		for (ProductEntity entity : list) {
			ProductDTO pro = proConvert.toDTO(entity);
			arr.add(pro);
		}
		return arr;
	}

	@Override
	@Transactional
	public ProductDTO findById(Long id) {
		ProductEntity entity = pro.findOne(id);
		return proConvert.toDTO(entity);
	}

	@Override
	@Transactional
	public int getTotalItem() {
		// TODO Auto-generated method stub
		return (int) pro.count();
	}

	@Override
	@Transactional
	public int getTotalItemByCategory(Long id) {
		return pro.count(id);
	}

	@Override
	@Transactional
	public List<ProductDTO> searchProduct(String key, int page, int limit) {
		List<ProductDTO> arr = new ArrayList<ProductDTO>();
		setProductBySearch(page, limit, key);
		Pageable pageable = new PageRequest(page - 1, limit);
		List<ProductEntity> list = pro.findAllByKey(key, pageable);
		if (key != null) {
			for (ProductEntity entity : list) {
				ProductDTO pro = proConvert.toDTO(entity);
				arr.add(pro);
			}
			return arr;
		}
		return null;
	}

	@Override
	@Transactional
	public int getTotalItemSearch(String key) {
		return pro.count(key);
	}
	
	@Override
	@Transactional
	public ProductDTO saveOrUpdate(ProductDTO productDTO) {
		CategoryEntity categoryEntity = categoryRepository.findOneByCode(productDTO.getCategoryCode());
		ProductEntity productEntity = new ProductEntity();
		
		if(productDTO.getId() != null) {
			ProductEntity oldProductEntity = pro.findOne(productDTO.getId());
			productEntity = proConvert.toEntity(productDTO, oldProductEntity);
		}else {
			productEntity = proConvert.toEntity(productDTO);
		}
	
		productEntity.setCategory(categoryEntity);
		productEntity = pro.save(productEntity);
		return proConvert.toDTO(productEntity);
	}

	@Override
	@Transactional
	public void delete(long id) {
		pro.delete(id);
	}
}
