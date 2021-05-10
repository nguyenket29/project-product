package com.hau.ketnguyen.controller.web;

import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.dto.CartDTO;
import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.IProductService;
import com.hau.ketnguyen.util.SessionUtils;

@Controller(value = "cart")
@RequestMapping(value = "/cart")
public class CartController {
	@Autowired
	private IProductService productService;

	@SuppressWarnings("unchecked")
	@GetMapping
	public ModelAndView viewCart(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/cart/home");
		TreeMap<Long, CartDTO> map = (TreeMap<Long, CartDTO>) SessionUtils.getInstance().getValue(request, "cartItems");
		if (map == null) {
			map = new TreeMap<>();
		}

		SessionUtils.getInstance().pushValue(request, "cartItems", map);
		return mav;
	}

	@SuppressWarnings("unchecked")
	@GetMapping(value = "/{action}/id={id}/qty={qty}")
	public ModelAndView addCart(@PathVariable("id") Long id, HttpServletRequest request,
			@PathVariable("action") String action, @PathVariable("qty") int qty, ModelAndView mav) {
		mav = new ModelAndView("/cart/home");
		TreeMap<Long, CartDTO> map = (TreeMap<Long, CartDTO>) SessionUtils.getInstance().getValue(request, "cartItems");
		ProductDTO productDTO = productService.findById(id);
		if (map == null) {
			map = new TreeMap<>();
		}

		if (productDTO != null) {
			if (map.containsKey(id)) {
				CartDTO cartItem = map.get(id);
				cartItem.setProductDTO(productDTO);
				if (action.equals("add")) {
					cartItem.setQuantity(cartItem.getQuantity() + 1);
					cartItem.getProductDTO().setQuantity(qty + 1);
					map.put(id, cartItem);
					mav = new ModelAndView("redirect:/trang-chu?page=1&limit=6&message=add_success");
				} else if (action.equals("sub")) {
					cartItem.getProductDTO().setQuantity(qty + 1);
					map.put(id, cartItem);
				} else if (action.equals("plus")) {
					cartItem.getProductDTO().setQuantity(qty - 1);
					if (productDTO.getQuantity() <= 0) {
						map.remove(id);
					} else {
						map.remove(id);
						map.put(id, cartItem);
					}
				} else {
					map.remove(id);
					if(cartItem.getQuantity() <= 0) {
						mav = new ModelAndView("redirect:/trang-chu?page=1&limit=6");
					}
				}
			} else {
				CartDTO cartItem = new CartDTO();
				cartItem.setProductDTO(productDTO);
				cartItem.setQuantity(1);
				map.put(id, cartItem);
				mav = new ModelAndView("redirect:/trang-chu?page=1&limit=6&message=add_success");
			}
		}

		SessionUtils.getInstance().pushValue(request, "cartItems", map);
		SessionUtils.getInstance().pushValue(request, "cartTotal", productDTO.totalPrice(map));
		SessionUtils.getInstance().pushValue(request, "cartNumber", map.size());
		return mav;
	}
}
