package com.kiwifootwear.DAO;

import com.kiwifootwear.model.Cart;
import com.kiwifootwear.model.CartItem;

public interface CartItemDAO {
	
	void addCartItem(CartItem cartItem);
	
	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);
	
	CartItem getCartItemByProductId(int productId);
}
