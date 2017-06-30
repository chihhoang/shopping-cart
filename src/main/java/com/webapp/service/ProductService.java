package com.webapp.service;

import java.util.List;

import com.webapp.model.Product;

public interface ProductService {

	public List<Product> getAllProducts();

	public void add(Product product);

	public float getTotal();

}
