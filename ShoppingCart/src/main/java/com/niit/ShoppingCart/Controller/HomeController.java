package com.niit.ShoppingCart.Controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCart.DAO.LoginDAO;
import com.niit.ShoppingCart.DAO.SupplierDAO;
import com.niit.ShoppingCart.DAO.UserDetailsDAO;
import com.niit.ShoppingCart.model.Login;
import com.niit.ShoppingCart.model.Product;
import com.niit.ShoppingCart.model.Supplier;
import com.niit.ShoppingCart.model.UserDetails;

@Controller
public class HomeController 
{
	@Autowired //provides connection //
	UserDetailsDAO ud; 
	@Autowired
	LoginDAO ld;
	@Autowired
	SupplierDAO sd;
	
	@Autowired
	@RequestMapping("/")// gives mapping to the requested page//
	public ModelAndView Home() // to call the requested jsp page//
	{
		ModelAndView m1=new ModelAndView("Home");// to map the home.jsp//
		return m1;
	}
	@ModelAttribute("Product")// maps the pojo class//
	public Product createProduct() {
		return new Product();
	}
	@RequestMapping("hi")// reference of home.jsp page//
	public ModelAndView display2()//method will read the pojo and jsp page
	{
		ModelAndView m1=new ModelAndView("Home");
		return m1;//returns to the home page
	}
	@RequestMapping("/Register")
	public ModelAndView register()
	{
		ModelAndView m1=new ModelAndView("Register");
		return m1;
	}
	@RequestMapping("/Login")
	public ModelAndView Login()
	{
		ModelAndView m1=new ModelAndView("Login");
		return m1;
	}
	@ModelAttribute("UserDetails")
	public UserDetails registerUser() {
		return new UserDetails();

	}
	 @ModelAttribute("Login")
    public Login createuser(){
    	return new Login();
    }
    @ModelAttribute("Supplier")
    public Supplier sup()
    {
    	return new Supplier();
    }
    
   
    @RequestMapping("/addsupplier")
	public ModelAndView display3() {

		ModelAndView mv3 = new ModelAndView("addsupplier");
		return mv3;
	}
    @RequestMapping(value="storesupplier",method = RequestMethod.POST)// provides mapping for storing supplier //
	public String addsupplier(HttpServletRequest request, @Valid @ModelAttribute("Supplier") Supplier supplier,
			BindingResult result) // when a supplier is added the servlet takes the request and binds the result//
    {
		if (result.hasErrors()) {
			return "addsupplier";
		}
		sd.save(supplier);
		return "addsupplier";
		
		}
    @RequestMapping("/Admin")
   	public ModelAndView cart() {

    	
   		ModelAndView mv7 = new ModelAndView("Admin");
   		return mv7;
}

    @RequestMapping(value ="storeUser", method = RequestMethod.POST) // to store user //
	public String addUser(@Valid @ModelAttribute("UserDetails") UserDetails registeruser,BindingResult result) {
		if (result.hasErrors()) {    // in case of errors it returns to register page//                           
			System.out.println("Errors");	
			return "Register";
		}
		System.out.println(registeruser.getUsername()); // user is stored //
		ud.save(registeruser);
		Login loginuser = new Login();  //gets the details of the stored user//
		loginuser.setId(registeruser.getId());
		System.out.println("'------------"+loginuser.getId());
		loginuser.setUsername(registeruser.getUsername());
		System.out.println("'------------"+loginuser.getUsername());
		loginuser.setPassword(registeruser.getPassword());
		System.out.println("'------------"+loginuser.getPassword());
		loginuser.setStatus(registeruser.isStatus());
		System.out.println("'------------"+loginuser.getRole());
	 ld.save(loginuser);
		return "Home";
	}
    @RequestMapping("/LogoutSuccess") // provides mapping to the logout page//
	public ModelAndView logoutpage(){
		ModelAndView mv9 = new ModelAndView("LogoutSuccess");
		return mv9;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)//gives mapping to logout successfully//
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)// the httpservlet gets the request and the response// 
			throws ServletException, IOException {
		HttpSession newsession = request.getSession(false);
		if (newsession != null) 
	    {
	         newsession.invalidate();

	    }
		response.sendRedirect("j_spring_security_logout");	
		}
	 @RequestMapping("/ContactUs")
	   	public ModelAndView deepu() {

	    	
	   		ModelAndView mv99 = new ModelAndView("ContactUs");
	   		return mv99;
	}
	
		
}

	

