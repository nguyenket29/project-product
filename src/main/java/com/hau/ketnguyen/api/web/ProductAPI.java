package com.hau.ketnguyen.api.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.IProductService;

@RestController(value = "productApi")
@RequestMapping(value = "/api")
public class ProductAPI {
	@Autowired
	private IProductService productService;

	@GetMapping("/home")
	public List<ProductDTO> show(@RequestParam int page, @RequestParam int limit) {
		return productService.findAll(page, limit);
	}

	@GetMapping("/sort")
	List<ProductDTO> getProduct(@RequestParam int page,@RequestParam int limit,@RequestParam String sortBy){
		Sort sorts = new Sort(Sort.Direction.ASC,sortBy);
		return productService.findAll(page,limit,sortBy,sorts);
	}
}
