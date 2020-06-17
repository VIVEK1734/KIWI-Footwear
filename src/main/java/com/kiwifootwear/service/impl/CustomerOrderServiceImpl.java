package com.kiwifootwear.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kiwifootwear.DAO.CustomerOrderDAO;
import com.kiwifootwear.model.Cart;
import com.kiwifootwear.model.CartItem;
import com.kiwifootwear.model.CustomerOrder;
import com.kiwifootwear.service.CartService;

@Service
public class CustomerOrderServiceImpl {
	
	
	@Autowired
	private CustomerOrderDAO customerOrderDAO;
	
	@Autowired
	private CartService cartService;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDAO.addCustomerOrder(customerOrder);		
	}
	
	public double getCustomerOrderGrandTotal(int cartId) {
		
		double grandTotal = 0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		
		for (CartItem item : cartItems) {
			grandTotal += item.getTotalPrice();
		}
	
		return grandTotal;
	}
		
}
