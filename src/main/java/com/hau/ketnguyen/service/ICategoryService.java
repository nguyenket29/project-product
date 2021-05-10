package com.hau.ketnguyen.service;

import java.util.List;
import java.util.Map;

import com.hau.ketnguyen.dto.CategoryDTO;

public interface ICategoryService {
	List<CategoryDTO> findAll();
	
	Map<String, String> findAlls();
}
