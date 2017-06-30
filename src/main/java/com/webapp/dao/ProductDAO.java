package com.webapp.dao;

import java.util.List;

import com.webapp.model.Product;

public interface ProductDAO {

	public List<Product> getAllProducts();

	public void add(Product product);

	public float getTotal();

}
