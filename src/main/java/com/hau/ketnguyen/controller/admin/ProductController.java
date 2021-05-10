package com.hau.ketnguyen.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hau.ketnguyen.dto.ProductDTO;
import com.hau.ketnguyen.service.ICategoryService;
import com.hau.ketnguyen.service.IProductService;

@Controller(value = "productController")
@RequestMapping(value = "/quan-tri/san-pham")
public class ProductController {
	@Autowired
	private IProductService productService;

	@Autowired
	private ICategoryService categoryService;

	@GetMapping(value = "/danh-sach")
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("limit") int limit,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/product/list");
		mav.addObject("model", productService.setProduct(page, limit));
		mav.addObject("product", productService.findAll(page, limit));
		return mav;
	}

	@GetMapping(value = "/chinh-sua")
	public ModelAndView addProductNew(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/product/edit");
		ProductDTO dto = new ProductDTO();

		if (null != categoryService.findAlls() && 0 != categoryService.findAlls().size()) {
			mav.addObject("categories", categoryService.findAlls());
		}
		mav.addObject("model", dto);
		return mav;
	}

	@PostMapping("/chinh-sua")
	public ModelAndView save(@ModelAttribute("model") ProductDTO productDTO,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		ModelAndView mav = new ModelAndView("admin/product/edit");
		productDTO.setThumbnail(saveFile(file));
		productService.saveOrUpdate(productDTO);
		if (null != categoryService.findAlls() && 0 != categoryService.findAlls().size()) {
			mav.addObject("categories", categoryService.findAlls());
		}
		mav.addObject("model", productDTO);
		return mav;
	}

	@GetMapping("/cap-nhat")
	public ModelAndView update(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("admin/product/edit");
		ProductDTO dto = new ProductDTO();
		if (dto != null) {
			dto = productService.findById(id);
		}

		if (null != categoryService.findAlls() && 0 != categoryService.findAlls().size()) {
			mav.addObject("categories", categoryService.findAlls());
		}

		mav.addObject("model", dto);
		return mav;
	}

	@PostMapping("/cap-nhat")
	public ModelAndView updateAll(@ModelAttribute("model") ProductDTO dto,
			@RequestParam(value = "thumbnail", required = false) MultipartFile file) {
		ModelAndView mav = new ModelAndView("admin/product/edit");
		dto.setThumbnail(saveFile(file));
		productService.saveOrUpdate(dto);
		mav.addObject("model", dto);
		return mav;
	}

	@GetMapping("/xoa")
	public ModelAndView deleteView(@RequestParam("page") int page, @RequestParam("limit") int limit,long id) {
		ModelAndView mav = new ModelAndView("admin/product/list");
		productService.delete(id);
		mav.addObject("model", productService.setProduct(page, limit));
		mav.addObject("product", productService.findAll(page, limit));
		mav = new ModelAndView("redirect:/quan-tri/san-pham/danh-sach?page=1&limit=2");
		return mav;
	}

	private String saveFile(MultipartFile file) {
		if (null != file && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				// creating folder save file
				File dir = new File("D:\\jee-2020-09\\project\\project-product\\src\\main\\webapp" + File.separator
						+ "template/images");
				if (!dir.exists()) {
					dir.mkdir();
				}

				// creating file on server
				String name = String.valueOf("image" + new Date().getTime() + ".jpg");
				File serverFile = new File(dir.getAbsoluteFile() + File.separator + name);
				System.out.println("Path of image on server: " + serverFile.getPath());
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return name;
			} catch (IOException e) {
				System.out.println("Error Upload File: " + e.getMessage());
			}
		} else {
			System.out.println("File not exists !");
		}
		return null;
	}
}
