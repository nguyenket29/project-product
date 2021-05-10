package com.hau.ketnguyen.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.IProductService;

@RestController
public class HomeAPI {
	@Autowired
	private IProductService productService;
 
	@PostMapping("/api/home")
	public ProductDTO add(@RequestBody ProductDTO pro){
		return productService.saveOrUpdate(pro);
	}
	
}
