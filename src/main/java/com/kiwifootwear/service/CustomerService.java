package com.kiwifootwear.service;

import java.util.List;
import com.kiwifootwear.model.Customer;

public interface CustomerService {
	
	void addCustomer(Customer customer);
	
	Customer getCutomerById(int customerId);
	
	List<Customer> getAllCustomers();
	
	Customer getCustomerByUsername(String username);

}
