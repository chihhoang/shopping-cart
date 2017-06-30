package com.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webapp.model.Product;
import com.webapp.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	// inject service
	@Autowired
	private ProductService productService;

	@GetMapping("/list")
	public String listCustomers(Model model)	{

		List<Product> products = productService.getAllProducts();

		float total = productService.getTotal();

		model.addAttribute("products", products);
		model.addAttribute("total", total);

		return "list-products";
	}

	@GetMapping("/showAddForm")
	public String showAddForm(Model model)	{

		Product product= new Product();

		model.addAttribute("product", product);

		return "add-form";
	}

	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product product)	{

		productService.add(product);

		return "redirect:/product/list";

	}

}
