package com.kiwifootwear.DAO.Impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.kiwifootwear.DAO.CartItemDAO;
import com.kiwifootwear.model.Cart;
import com.kiwifootwear.model.CartItem;

@Repository
@Transactional
public abstract class CartItemDAOImpl implements CartItemDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
		session.flush();
	}
	
	public void removeAllCartItem(CartItem cartItem) {
		
		Session session = sessionFactory.getCurrentSession();
		session.delete(cartItem);
		session.flush();
	}
	
	public void removeAllCartItems(Cart cart) {
		
		List<CartItem> cartItems = cart.getCartItems();
		
		for (CartItem item : cartItems) {
			removeCartItem(item);
		}
	}
	
	public CartItem getCartItemByProductId(int productId) {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CartItem where productId = ?");
		query.setInteger(0, productId);
		session.flush();
		
		return (CartItem) query.uniqueResult();
	}
	
}