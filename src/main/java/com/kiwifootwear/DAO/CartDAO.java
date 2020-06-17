package com.kiwifootwear.DAO;

import java.io.IOException;
import com.kiwifootwear.model.Cart;

public interface CartDAO {

	Cart getCartById(int cartId);
	
	Cart validate(int cartId) throws IOException;
	
	void update(Cart cart);
	
}