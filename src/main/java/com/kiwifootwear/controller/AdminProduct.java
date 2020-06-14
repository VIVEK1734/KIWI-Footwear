package com.kiwifootwear.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import com.kiwifootwear.model.Product;

@Controller
@RequestMapping("/admin")
public class AdminProduct {
	       
    private Path path;
	
	public AdminProduct() {
        super();
    }
    
    @RequestMapping(value="/product/editProduct", method = RequestMethod.POST)
    protected String editProductPost(@Validated @ModelAttribute("product") Product p, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "addProduct";
		}
		
		MultipartFile Image = p.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + p.getImage() + ".png");
        
        if(Image != null && !Image.isEmpty()) {
        	
        	try {
        		Image.transferTo(new File(path.toString()));
        	}
        	
        	catch(Exception e) {
        		e.printStackTrace();
        		throw new RuntimeException("Product image saving failed", e);
        	}
        	
        }
        
		return "redirect:/admin";
        
    }
    
    @RequestMapping("/product/deleteProduct/{id}")
    public String deleteProduct(@PathVariable int id, Product p, Model model, HttpServletRequest request) {
        	
    	String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + p.getImage() + ".png");
            
        if(Files.exists(path)) {
            	
        	try {
            	Files.delete(path);
            }
            	
            catch(Exception e) {
            	e.printStackTrace();
            }
            	
        }
    		
    	return "redirect:/admin";
            
    }

}