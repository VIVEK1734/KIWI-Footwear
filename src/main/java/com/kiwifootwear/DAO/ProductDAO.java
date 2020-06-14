package com.kiwifootwear.DAO;

import java.util.List;

import com.kiwifootwear.model.Product;

public interface ProductDAO {
	
	public List<Product> viewAllProduct();

	public int insert(Product c);
	
	public int delete(int id);
	
	public int update(Product P);

}
