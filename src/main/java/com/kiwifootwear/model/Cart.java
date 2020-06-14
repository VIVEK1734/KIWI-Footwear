package com.kiwifootwear.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import java.io.Serializable;

@Entity
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	private List<Product> l;
	
	public Cart() {}

	public int getCartId() {
		return cartId;	
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	
	public List<Product> getL() {
		return l;
	}

	public void setL(List<Product> l) {
		this.l = l;
	}

}
