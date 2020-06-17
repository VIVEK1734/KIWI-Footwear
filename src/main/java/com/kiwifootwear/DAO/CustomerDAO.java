package com.kiwifootwear.DAO;

import java.util.List;
import com.kiwifootwear.model.Customer;

public interface CustomerDAO {

	void addCustomer(Customer customer);
	
	Customer getCustomerById(int customerId);
	
	List<Customer> getAllCustomers();
	
	Customer getCustomerByUsername(String username);
}
