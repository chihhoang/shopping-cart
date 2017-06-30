package com.webapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webapp.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// inject session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getAllCustomers() {

		// create a session
		Session session = sessionFactory.getCurrentSession();

		// execute query and get the result
		List<Customer> customers = session.createQuery("from Customer order by lastName", Customer.class).getResultList();

		// return the result
		return customers;
	}

	@Override
	public void add(Customer customer) {

		// create a session
		Session session = sessionFactory.getCurrentSession();

		// execute query and get the result
		session.persist(customer);

	}


}
