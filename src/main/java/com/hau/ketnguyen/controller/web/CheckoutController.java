package com.hau.ketnguyen.controller.web;

import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.dto.CartDTO;
import com.hau.ketnguyen.dto.CustomerDTO;
import com.hau.ketnguyen.dto.OrderDTO;
import com.hau.ketnguyen.dto.OrderItemsDTO;
import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.ICustomerService;
import com.hau.ketnguyen.service.IOrderItemsService;
import com.hau.ketnguyen.service.IOrderService;
import com.hau.ketnguyen.service.IProductService;
import com.hau.ketnguyen.util.SessionUtils;

@Controller(value = "checkout")
@RequestMapping(value = "/checkout")
public class CheckoutController {
	@Autowired
	private IProductService productService;

	@Autowired
	private IOrderService orderService;

	@Autowired
	private ICustomerService customerService;

	@Autowired
	private IOrderItemsService orderItemsService;

	@SuppressWarnings("unchecked")
	@GetMapping
	public ModelAndView payment(ModelAndView mav, HttpServletRequest request) {
		mav = new ModelAndView("/checkout/home");
		TreeMap<Long, CartDTO> map = (TreeMap<Long, CartDTO>) SessionUtils.getInstance().getValue(request, "cartItems");
		ProductDTO dto = new ProductDTO();
		if (map == null) {
			map = new TreeMap<>();
		}

		mav.addObject("order", new CustomerDTO());
		SessionUtils.getInstance().pushValue(request, "cartItems", map);
		SessionUtils.getInstance().pushValue(request, "cartTotal", dto.totalPrice(map));
		return mav;
	}

	@SuppressWarnings("unchecked")
	@GetMapping(value = "/product_id={id}")
	public ModelAndView detailCheckout(ModelAndView mav, HttpServletRequest request, @PathVariable("id") Long id) {
		mav = new ModelAndView("/checkout/home");
		TreeMap<Long, CartDTO> map = (TreeMap<Long, CartDTO>) SessionUtils.getInstance().getValue(request, "cartItems");
		if (map == null) {
			map = new TreeMap<>();
		}

		ProductDTO productDTO = productService.findById(id);

		if (productDTO != null) {
			if (map.containsKey(id)) {
				CartDTO cartItem = map.get(id);
				cartItem.setProductDTO(productDTO);
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				map.put(id, cartItem);
			} else {
				CartDTO cartItem = new CartDTO();
				cartItem.setProductDTO(productDTO);
				cartItem.setQuantity(1);
				map.put(id, cartItem);
			}
		}

		mav.addObject("order", new CustomerDTO());
		SessionUtils.getInstance().pushValue(request, "cartItems", map);
		SessionUtils.getInstance().pushValue(request, "cartTotal", productDTO.totalPrice(map));
		SessionUtils.getInstance().pushValue(request, "cartNumber", map.size());
		return mav;
	}

	@SuppressWarnings("unchecked")
	@PostMapping
	public ModelAndView Payment(ModelAndView mav, HttpServletRequest request,
			@ModelAttribute("order") CustomerDTO customerDTO) {
		mav = new ModelAndView("/checkout/home");
		TreeMap<Long, CartDTO> map = (TreeMap<Long, CartDTO>) SessionUtils.getInstance().getValue(request, "cartItems");
		OrderDTO orderDTO = new OrderDTO();
		if (map == null) {
			map = new TreeMap<>();
		}

		customerService.save(customerDTO);
		orderService.save(orderDTO, customerDTO);
		for (Map.Entry<Long, CartDTO> item : map.entrySet()) {
			OrderItemsDTO itemsDTO = new OrderItemsDTO();
			itemsDTO.setOrderItemPrice(item.getValue().getProductDTO().getPrice());
			itemsDTO.setOrderItemQuantity(item.getValue().getProductDTO().getQuantity());
			itemsDTO.setAmount(
					item.getValue().getProductDTO().getPrice() * item.getValue().getProductDTO().getQuantity());
			itemsDTO.setStatus(true);
			orderItemsService.save(itemsDTO, orderDTO, item.getValue().getProductDTO());
		}

		map = new TreeMap<Long, CartDTO>();

		SessionUtils.getInstance().pushValue(request, "cartItems", map);
		SessionUtils.getInstance().pushValue(request, "cartTotal", 0);
		SessionUtils.getInstance().pushValue(request, "cartNumber", 0);
		return mav;
	}
}
