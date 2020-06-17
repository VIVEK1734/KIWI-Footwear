package com.kiwifootwear.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kiwifootwear.DAO.CartDAO;
import com.kiwifootwear.model.Cart;
import com.kiwifootwear.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	
	@Autowired
	private CartDAO cartDAO;
	
	public Cart getCartById(int cartId) {
		return cartDAO.getCartById(cartId);
	}
	
	public void update(Cart cart) {
		cartDAO.update(cart);
	}
	
}
