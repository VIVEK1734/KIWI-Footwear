package com.kiwifootwear.DAO;

import java.util.List;
import com.kiwifootwear.model.Product;

public interface ProductDAO {
	
	List<Product> getProductList();

	Product getProductById (int id);
	
	void addproduct(Product product);
	
	void editproduct(Product product);

	void deleteproduct(Product product);
	
}
