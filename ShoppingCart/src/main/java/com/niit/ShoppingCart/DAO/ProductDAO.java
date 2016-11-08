package com.niit.ShoppingCart.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.ShoppingCart.model.Product;

@Repository
public interface ProductDAO {
// its an interface  CRUD operations are carried out here                                                                                          
	
	public boolean save(Product product); // used to save the product
	
	public boolean update(Product product); // to update the product
	
	public void delete(int id); // to delete the product
	
	public Product get(int id);// to get id
	
	public List<Product>list(); // to get the list of products
}
