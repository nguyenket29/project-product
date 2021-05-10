package com.hau.ketnguyen.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.IProductService;

@Controller(value = "detail")
@RequestMapping(value = "/detail")
public class DetailController {
	@Autowired
	private IProductService productService;

	@GetMapping(value = "/{action}/id={id}/qty={qty}")
	public ModelAndView detail(@PathVariable("id") Long id, @PathVariable("action") String action,
			@PathVariable("qty") int qty) {
		ModelAndView mav = new ModelAndView("/detail/home");

		ProductDTO dto = productService.findById(id);

		if (dto != null) {
			if (action.equals("sub")) {
				dto.setQuantity(qty + 1);
			} else if (action.equals("plus")) {
				dto.setQuantity(qty - 1);
			} else {
				mav.addObject("productID", dto);
			}
		}

		mav.addObject("productID", dto);
		return mav;
	}
}
