package com.niit.ShoppingCart.DAO;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.ShoppingCart.model.Login;
@Repository //specifies the class as data access object
public interface LoginDAO {
// it is an interface, CRUD operations are done here... we just write the methods we are not implementing this
	
	public List<Login> list(); //it gives the list of login users
	
	public Login get(int id); // for login id
	
	public Login getSingleLogin(int id);
	
	public void save(Login login);
	                                // we can save and update particular user through this method
	public void update(Login login);
	
	public List getAllLogins();
	
	public void delete(int id); // to delete a particular user
}
