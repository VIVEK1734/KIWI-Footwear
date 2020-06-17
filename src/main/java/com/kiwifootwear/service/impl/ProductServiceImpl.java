package com.kiwifootwear.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kiwifootwear.DAO.ProductDAO;
import com.kiwifootwear.model.Product;
import com.kiwifootwear.service.ProductService;

@Service
public abstract class ProductServiceImpl implements ProductService {

	
	@Autowired
	private ProductDAO productDAO;
	
	public Product getProductById(int productId) {
		return productDAO.getProductById(productId);
	}
	
	public List<Product> getProductByList() {
		return productDAO.getProductList();
	}
	
	public void addProduct (Product product) {
		productDAO.addproduct(product);
	}
	
	public void editProduct (Product product) {
		productDAO.editproduct(product);
	}
	
	public void deleteProduct (Product product) {
		productDAO.deleteproduct(product);		
	}
	
}
