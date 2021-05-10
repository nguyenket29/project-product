package com.hau.ketnguyen.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hau.ketnguyen.converter.CategoryConverter;
import com.hau.ketnguyen.dto.CategoryDTO;
import com.hau.ketnguyen.entity.CategoryEntity;
import com.hau.ketnguyen.repository.CategoryRepository;
import com.hau.ketnguyen.service.ICategoryService;

@Service
public class CategoryServiceImpl implements ICategoryService{
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private CategoryConverter categoryConverter;

	@Override
	public List<CategoryDTO> findAll() {
		List<CategoryDTO> rs = new ArrayList<CategoryDTO>();
		List<CategoryEntity> list = categoryRepository.findAll();
		for(CategoryEntity entity: list) {
			CategoryDTO dto = categoryConverter.toDTO(entity);
			rs.add(dto);
		}
		return rs;
	}
	
	@Override
	public Map<String,String> findAlls() {
		Map<String,String> rs = new HashMap<>();
		List<CategoryEntity> list = categoryRepository.findAll();
		for(CategoryEntity entity: list) {
			CategoryDTO dto = categoryConverter.toDTO(entity);
			rs.put(dto.getCode(),dto.getName());
		}
		return rs;
	}

}
