package com.kiwifootwear.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kiwifootwear.DAO.CartItemDAO;
import com.kiwifootwear.model.Cart;
import com.kiwifootwear.model.CartItem;
import com.kiwifootwear.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	
	
	@Autowired
	private CartItemDAO cartItemDAO;
	
	public void addCartItem(CartItem cartItem) {
		cartItemDAO.addCartItem(cartItem);		
	}
	
	public void removeCartItem(CartItem cartItem) {
		cartItemDAO.removeCartItem(cartItem);		
	}
	
	public void removeAllCartItems(Cart cart) {
		cartItemDAO.removeAllCartItems(cart);		
	}
	
	public CartItem getCartItemByProductId(int productId) {
		return cartItemDAO.getCartItemByProductId(productId);
	}
	
}
