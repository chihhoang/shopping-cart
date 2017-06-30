package com.webapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webapp.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	// inject session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getAllProducts() {

		// create a session
		Session session = sessionFactory.getCurrentSession();

		// execute query and get the result
		List<Product> products = session.createQuery("from Product", Product.class).getResultList();

		// return the result
		return products;
	}

	@Override
	public void add(Product product) {

		// create a session
		Session session = sessionFactory.getCurrentSession();

		// execute query and get the result
		session.persist(product);

	}

	@Override
	public float getTotal() {

		// create a session
		Session session = sessionFactory.getCurrentSession();

		//		float total = (float) session.createQuery("select sum(p.price) from Product p").getResultList().get(0);

		return 0.0f;
	}

}
