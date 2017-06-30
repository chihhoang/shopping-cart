package com.webapp.service;

import java.util.List;

import com.webapp.model.Customer;

public interface CustomerService {

	public List<Customer> getAllCustomers();

	public void add(Customer customer);

}
