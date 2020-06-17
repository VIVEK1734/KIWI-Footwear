package com.kiwifootwear.DAO.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.kiwifootwear.DAO.CustomerOrderDAO;
import com.kiwifootwear.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDAOImpl implements CustomerOrderDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customerOrder);
		session.flush();
	}
	
}