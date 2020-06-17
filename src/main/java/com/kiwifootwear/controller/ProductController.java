package com.kiwifootwear.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import com.kiwifootwear.model.Product;
import com.kiwifootwear.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
       
	@Autowired
	public ProductService productService;

	@Autowired
    private JavaMailSender mailSender;
	
	
	@RequestMapping("/productList/all")
	public String getProgucts(Model model) {
		
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "productList";
	}
	
	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
		
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);
		
		return "viewProduct";
	}
	
	@RequestMapping("/productList")
	public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model) throws IOException {
		
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);
		
		return "productList";
	}
	
	@RequestMapping("/favorite/{productId}")
	public String viewSendMailPage(@PathVariable int productId, Model model) throws IOException {
		
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);
		
		return "sendMail";
	}
	
	@RequestMapping(value="/sentMail", method=RequestMethod.POST)
	public String sendMail(HttpServletRequest request) {
		
		try {
			String recipientAddress = request.getParameter("recipient");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			
			System.out.println("To:" + recipientAddress);
			System.out.println("Subject:" + subject);
			System.out.println("Message:" + message);
			
			SimpleMailMessage email = new SimpleMailMessage();
			email.setTo(recipientAddress);
			email.setTo(subject);
			email.setTo(message);
			
			mailSender.send(email);
			
		}
		
		catch(Exception e) {
			System.out.println("Exception = " +e);
		}
		
		return "Success";
	}

}


