package com.hau.ketnguyen.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.service.ICategoryService;
import com.hau.ketnguyen.service.IProductService;
import com.hau.ketnguyen.util.MessageUtils;

@Controller(value = "homeWeb")
public class HomeController {
	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IProductService productService;
	
	@Autowired
	private MessageUtils messageUtils;


	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePagePagination(@RequestParam("page") int page, @RequestParam("limit") int limit,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("product", productService.findAll(page, limit));
		mav.addObject("model", productService.setProduct(page, limit));
		if (request.getParameter("message") != null) {
			HashMap<String, String> message = messageUtils.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		return mav;
	}

	@RequestMapping(value = "/category/cateId={id}", method = RequestMethod.GET)
	public ModelAndView homeProduct(@PathVariable("id") Long id, @RequestParam("page") int page,
			@RequestParam("limit") int limit) {
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("product", productService.findAllByCategory(id, page, limit));
		mav.addObject("model", productService.setProductByCategory(page, limit, id));
		return mav;
	}

	@RequestMapping(value = "/sorts={sort}", method = RequestMethod.GET)
	public ModelAndView homeSort(@PathVariable("sort") String sort, @RequestParam("page") int page,
			@RequestParam("limit") int limit) {
		ModelAndView mav = new ModelAndView("web/home");

		mav.addObject("categories", categoryService.findAll());
		if (sort.equals("asc_az")) {
			Sort sorts = new Sort(Sort.Direction.ASC, "name");
			mav.addObject("product", productService.findByNameAZZA(page, limit, "asc_az", sorts));
		} else if (sort.equals("desc_za")) {
			Sort sorts = new Sort(Sort.Direction.DESC, "name");
			mav.addObject("product", productService.findByNameAZZA(page, limit, "desc_za", sorts));
		} else if (sort.equals("desc_price")) {
			Sort sorts = new Sort(Sort.Direction.DESC, "price");
			mav.addObject("product", productService.findByPriceIncreaseDecrease(page, limit, "desc_rice", sorts));
		} else if (sort.equals("asc_price")) {
			Sort sorts = new Sort(Sort.Direction.ASC, "price");
			mav.addObject("product", productService.findByPriceIncreaseDecrease(page, limit, "asc_price", sorts));
		} else {
			mav.addObject("product", productService.findAll());
		}

		mav.addObject("model", productService.setProduct(page, limit));
		return mav;
	}

	@RequestMapping(value = "/trang-chu/search", method = RequestMethod.GET)
	public ModelAndView processSearch(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam("key") String key) {
		ModelAndView mav = new ModelAndView("/web/home");
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("product", productService.searchProduct(key, page, limit));
		mav.addObject("model", productService.setProductBySearch(page, limit, key));
		return mav;
	}

	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		ModelAndView mav = new ModelAndView("redirect:/trang-chu?page=1&limit=6");
		return mav;
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}
}
