package com.webapp.dao;

import java.util.List;

import com.webapp.model.Customer;

public interface CustomerDAO {

	public List<Customer> getAllCustomers();

	public void add(Customer customer);

}
